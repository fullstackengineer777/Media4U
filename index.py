# import requests
# response = requests.get('https://www.meetup.com/de-DE/home/?suggested=true&source=EVENTS')
# print(response.text)

from selenium import webdriver
from selenium.webdriver.common.by import By

from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import codecs
import re
from webdriver_manager.chrome import ChromeDriverManager
import pandas as pd
# driver = webdriver.Chrome()
# driver.get("https://www.meetup.com/de-DE/home/?suggested=true&source=EVENTS")
# driver.quit()




# options = webdriver.ChromeOptions()
# driver = webdriver.Chrome(
#     executable_path=CHROMEDRIVER_PATH, 
#     options=options
# )
options = webdriver.ChromeOptions()
# prefs = {
#     "profile.managed_default_content_settings.images": 2,
#     "profile.managed_default_content_settings.stylesheets": 2
# }
# options.add_experimental_option("prefs", prefs)
options.add_experimental_option("excludeSwitches", ["enable-logging"])
# options.add_argument('--headless')
options.add_argument('--disable-gpu')
options.add_argument('--disable-extensions')
options.add_argument('--disable-features=NetworkService')
options.add_argument('--disable-dev-shm-usage')
options.add_argument('--no-sandbox')
# options.add_argument('--blink-settings=imagesEnabled=false')
# options.add_argument('--disable-features=CSSStylusUsage')
options.add_argument("--disable-blink-features=AutomationControlled")
# options.add_argument("--pageLoadStrategy=none")

# # set network conditions to disable css and images
# network_conditions = {
#     'offline': False,
#     'latency': 5,  # additional latency (ms)
#     'download_throughput': 500 * 1024,  # download speed (bytes/s)
#     'upload_throughput': 500 * 1024  # upload speed (bytes/s)
# }
# options.set_network_conditions(offline=False, **network_conditions)

driver = webdriver.Chrome(options=options,service=Service(ChromeDriverManager().install()))

# driver=webdriver.Chrome(service=Service(ChromeDriverManager().install()))


urls = [
    "https://www.meetup.com/de-DE/home/?suggested=true&source=EVENTS",
    "https://www.karlsruhe-erleben.de/veranstaltungen",
    "https://www.karlsruhe-erleben.de/media/veranstaltungen#/event",
    "http://www.badenmedia.de/",
    "https://klappeauf.de/kalender.php"
]

def website0():
    return "website0"
    url = "https://www.meetup.com/de-DE/home/?suggested=true&source=EVENTS"
    # wait = WebDriverWait(driver, 10)
    # driver.get(url)
    # get_url = driver.current_url
    # wait.until(EC.url_to_be(url))

    # if get_url == url:
    #     page_source = driver.page_source

    #     soup = BeautifulSoup(page_source, features="html.parser")
    #     groups = soup.find_all('li', {'class': 'tileGrid-tile'})
    #     for group in groups:
    #         link = group.find("a")["href"]
    #         print(link)
    #         driver.get(link)

    #         soup = BeautifulSoup(driver.page_source, features="html.parser")
    #         ul_elements = soup.select('ul.flex.flex-col.space-y-5')
    #         print("Count of ul = ", len(ul_elements))
    #         # print(ul_element)
    #         for ul_element in ul_elements:
    #             li_elements = ul_element.find_all('li', recursive = False)
    #             li_elements = ul_element.find_all('li', recursive = False)
    #             print("Count of li = ", len(li_elements))
    #             for li_element in li_elements:
    #                 event_link = li_element.find("a")["href"]
    #                 print(event_link)
    #                 driver.get(event_link)
    #                 ### scrap the event data
    #                 soup = BeautifulSoup(driver.page_source, features="html.parser")
    #                 title = soup.select('h1.overflow-ellipsis.overflow-hidden.text-3xl.font-bold.leading-snug')[0].text                
    #                 print("title = ", title)
    #                 # description = soup.select('')
    #                 eventinfo = soup.find('div', id='event-info')
    #                 startend = eventinfo.find('time').text
    #                 arr_startend = startend.split("to")
    #                 print("time start = ", arr_startend[0])
    #                 print("time end = ", arr_startend[1])

    #             break # need past events or not ?        

    #     keyword = input("Enter keyword : ")
    #     driver.quit()

def website1():
    url = "https://www.karlsruhe-erleben.de/veranstaltungen"
    wait = WebDriverWait(driver, 10)
    driver.get(url)
    driver.find_element(By.XPATH, '//*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]').click()
    print("--------------------")
    get_url = driver.current_url
    wait.until(EC.url_to_be(url))
    
    if get_url == url:
        page_source = driver.page_source
        soup = BeautifulSoup(page_source, features="html.parser")
        # allowbtn = soup.find(id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll")
        # allowbtn.click()
        events = soup.find_all('div', {'class': 'grid-container__grid-item'})
        print(len(events))
        for event in events: 
            link = event.find("a")["href"]
            print(link)
            driver.get(link)




    stop2 = input("Website2 stopped here: ")
    return "website1"

def website2():
    # url = "https://www.karlsruhe-erleben.de/media/veranstaltungen#/event"
    # wait = WebDriverWait(driver, 10)
    # driver.get(url)
    # get_url = driver.current_url
    # wait.until(EC.url_to_be(url))

    # if get_url == url:
    #     page_source = driver.page_source
    #     soup = BeautifulSoup(page_source, features="html.parser")
    #     print(soup.title.text)
    #     allowbtn = soup.find(id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll")
    #     print(allowbtn)
    #     # allowbtn.click()
    #     groups = soup.find_all('a', {'class': 'tb-w-teaser-card'})
    #     print(len(groups))
    #     for group in groups:
    #         link = group["href"]
    #         print(link)
    #     stop = input("input: ")
    return "website2"

def website3():
    url = "http://www.reindeers.de/termine/"
    wait = WebDriverWait(driver, 10)
    driver.get(url)
    get_url = driver.current_url
    wait.until(EC.url_to_be(url))

    if get_url == url:
        page_source = driver.page_source
        soup = BeautifulSoup(page_source, features="html.parser")
        events = soup.find_all('tbody')
        print(len(events))

        for event in events:
            a = event.find("a")
            if a is not None and not a.has_attr('class'):                
                link = a["href"]
                print(link)
                driver.get(link)

        stop = input("input: ")

    return "website3"

def website4():
    return "website4"

def website5():

    return "website5"

def website6():
    return "website6"

def defaultFunc():
    return "default"

switch = {
    0: website0, 1: website1, 2: website2, 3: website3, 4: website4, 5: website5, 6: website6
}

for i in range(len(urls)):
    func = switch.get(i, defaultFunc)
    result = func()
    print(result)



            # temp = input("Next group ? : ")
        

            # event_uls = soup.select('ul.space-y-5')
            # print(event_uls)

            # for event_ul in event_uls:
            #     events = soup.find_all_next('li')
            #     print(events)
            #     for event in events:
            #         event_link = event.find("a")["href"]
            #         print(event_link)
            #         # driver.get(event_link)
            #         temp_e = input("Next event ? : ")




            # keyword = input("Enter a keyword to find: ")
            # matches = soup.body.find_all(string=re.compile(keyword))
            # len_match = len(matches)
            # title = soup.title.text
            # # print(title)

            # file=codecs.open('article_scraping.txt', 'a+')
            # file.write(title+"\n")
            # file.write("The following are all instances of your keyword:\n")
            # count=1
            # for i in matches:
            #     file.write(str(count) + "." + i + "\n")
            #     count += 1

            # file.write("There were " + str(len_match) + " matches found for the keyword.")
            # file.close()

            # file_page = codecs.open('page.txt', 'w')
            # page_source_utf8 = page_source.encode('utf-8')
            # file_page.write(page_source_utf8)
            # file_page.close()
            # print(page_source)