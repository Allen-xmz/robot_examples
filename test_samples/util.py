from datetime import datetime

def get_current_time():
    now = datetime.now()
    now_time = now.strftime("%Y-%m-%d-%H-%M-%S")
    print(now_time)
    return now_time