import os
from dotenv import load_dotenv
import http.client
import json
from db.init_db import init_db

load_dotenv()
api_key = os.getenv("API_KEY")


def load_player_stats(game_id): 
    # api_conn = http.client.HTTPSConnection("v1.american-football.api-sports.io")
    # headers = {
    #     'x-apisports-key': api_key
    # }
    # api_conn.request("GET", f"/games/statistics/players?id={game_id}", headers=headers)
    # res = api_conn.getresponse()
    # data = res.read()
    # with open("player_stats_res.json", "w") as f: 
    #     f.write(data.decode("utf-8"))

    with open("player_stats_res.json") as f:
        text = f.read()
        data = json.loads(text)

    team1_res = data["response"][0]
    team1_groups = team1_res["groups"]
    for group in team1_groups: 
        row         = {}
        players     = group["players"]
        group_name  = group["name"]
        for player in players: 
            row["player_id"]    = player["player"]["id"]
            row["player_name"]  = player["player"]["name"]
            row["game_id"]      = game_id
            player_stats        = player["statistics"]
            for player_stat in player_stats: 
                stat_name   = player_stat["name"]
                stat_val    = player_stat["value"] 
                if stat_name == "comp att": 
                    comp_att                    = stat_val.split("/")
                    row["passing_completions"]  = comp_att[0]
                    row["passing_attempts"]     = comp_att[1]
                if stat_name == "sacks":
                    sacks_yards_lost = stat_val.split("-")
                row[stat_name] = stat_val

            print(row)
                



            break

        break

    

def main():

    load_player_stats(1985)


if __name__ == "__main__":
    main()
