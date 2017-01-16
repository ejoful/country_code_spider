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

        insert_sql = ("insert into tbl_country(`country_name`, `iso_codes1`,`iso_codes2`,`country_code`, `position`) "
               "values(%s, %s, %s, %s, %s);")
        update_sql = ("update tbl_country set `country_name` = %s, `iso_codes1` = %s,`iso_codes2` = %s,"
                      "`country_code` = %s, `position` = %s where `country_name` = %s;")

        insert_lis = (item['country_name'], item['iso_codes1'], item['iso_codes2'], item['country_code'], item['position'])

        update_lis = (item['country_name'], item['iso_codes1'], item['iso_codes2'], item['country_code'], item['position'], item['country_name'])

        try:
            cur.execute(exist_sql)
            # 获取一条数据
            result = cur.fetchone()
            # 如果result为空则插入一条数据
            if result is None:
                # print "********** " + insert_sql
                cur.execute(insert_sql, insert_lis)
            # else:
            #     print "********** " + update_sql
            #     cur.execute(update_sql, update_lis)
        except Exception,e:
            print "Insert error:",e
            con.rollback()
        else:
            con.commit()
        cur.close()
        con.close()
        return item
