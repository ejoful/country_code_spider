# -*- coding: utf-8 -*-
import scrapy

from country_code.items import CountryCodeItem

class CountrycodeSpider(scrapy.Spider):
    name = "countrycode"
    allowed_domains = ["countrycode.org"]
    start_urls = (
        'https://countrycode.org/',
    )

    def parse(self, response):
        country_item = response.xpath('//table[@class="table table-hover table-striped main-table"]/tbody/tr')

        for index, country in enumerate(country_item):
            yield {
                'country_name': country.xpath('./td[1]/a/text()').extract_first(),
                'country_code': country.xpath('./td[2]/text()').extract_first(),
                'position': index
            }

