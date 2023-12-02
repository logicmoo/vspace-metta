import time

def setup_and_run_chromedriver():
    import subprocess
    import shutil

    # List of required packages
    required_packages = ["selenium","undetected-chromedriver","markdownify"",langchain","gpt4-openai-api==0.2"]

    # Check if each required package is installed, and install it if not
    for package in required_packages:
        try:
            __import__(package)
        except ImportError:
            print(f"Installing {package}...")
            subprocess.call(["pip", "install", package])

    # Search the PATH for ChromeDriver executable
    chromedriver_path = shutil.which("chromedriver")

    if chromedriver_path is None:
        print("ChromeDriver not found in PATH. Please make sure it's installed and added to your PATH.")
    else:
        from selenium import webdriver

        # Set up ChromeDriver
        options = webdriver.ChromeOptions()
        # You can add additional options if needed, such as specifying a proxy or user agent.
        # options.add_argument("--proxy-server=proxy-server-address")

        from selenium.webdriver.chrome.service import Service
        service = Service(chromedriver_path)
        service.start()
        driver = webdriver.Chrome(executable_path=chromedriver_path, options=options)
        driver = webdriver.Remote(service.service_url)
        # Navigate to a website
        driver.get('http://www.google.com/');
        time.sleep(5) # Let the user actually see something!
        # Perform actions on the webpage (e.g., clicking buttons, filling forms)
        search_box = driver.find_element_by_name('q')
        search_box.send_keys('ChromeDriver')
        search_box.submit()
        time.sleep(5) # Let the user actually see something!

        # When done, close the browser
        driver.quit()


if __name__ == "__main__":
    setup_and_run_chromedriver()



