import os
import sys

def get_links(qry):
    text = f"""youtube-dl ytsearch5:"{qry}" --get-id --get-title"""
    links = os.popen(text).readlines()
    titles = [links[i].strip() for i in range(0, len(links), 2)]
    ids = [links[i].strip() for i in range(1, len(links), 2)]

    return titles, ids 

def get_TnId(qry):
    text = f"""youtube-dl ytsearch:"{qry}" --get-id --get-title"""
    links = os.popen(text).readlines()
    return links


def info(txt):
    print(f"[INFO] --> {txt}")

def menu():
    os.system("cls")
    qry = str(input("Search: "))
    print(f"Looking for: '{qry}'. Please wait...")

    titles, id = get_links(qry)
    total = len(titles)

    for i in range(total):
        print(f"[{i + 1}] - {titles[i]}")
    print(f"[{total + 1}] - Back")
    print(f"[{total + 2}] - Exit")
    opt = int(input("Choose an option: ")) - 1

    if opt == total: 
        menu()
    elif opt == (total + 1): 
        info("Exiting...")
        sys.exit()
    elif opt < total: 
        print("="*10)
        info(f"NOW PLAYING: {titles[opt]}")
        print("="*10)

        os.system(f"vlc http://www.youtube.com/watch?v={id[opt]}")
    else:
        info("Wrong Option...")
        menu()

def main():

    if sys.argv[1]:
        id = get_TnId(str(sys.argv[1]))
        print("Now playing: ", id[0])
        os.system(f"vlc http://www.youtube.com/watch?v={id[1]}")

    else:
        loop = True
        while loop:
            menu()


if __name__ == "__main__":
    main()