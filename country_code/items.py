# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class CountryCodeItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    # 国家名字
    country_name = scrapy.Field()
    # 国家代号
    country_code = scrapy.Field()
    # 位置
    position = scrapy.Field()


