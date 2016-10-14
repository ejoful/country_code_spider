# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

import MySQLdb

class CountryCodePipeline(object):
    def process_item(self, item, spider):
        DBKWARGS = spider.settings.get('DBKWARGS')
        con = MySQLdb.connect(**DBKWARGS)
        cur = con.cursor()
        exist_sql = "select * from tbl_country where country_name like '%s'" % item['country_name']
        print "********** " + exist_sql
        insert_sql = ("insert into tbl_country(`country_name`, `country_code`, `position`) "
               "values(%s, %s, %s)")
        lis = (item['country_name'], item['country_code'], item['position'])

        try:
            cur.execute(exist_sql)
            # 获取一条数据
            result = cur.fetchone()
            # 如果result为空则插入一条数据
            if result is None:
                cur.execute(insert_sql, lis)

        except Exception,e:
            print "Insert error:",e
            con.rollback()
        else:
            con.commit()
        cur.close()
        con.close()
        return item
