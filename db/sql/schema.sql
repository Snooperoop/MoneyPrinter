CREATE TABLE game ( 
  game_id               INT PRIMARY KEY,
  game_date             DATE,
  home_team_stats_id    INT,
  away_team_stats_id    INT,
);

CREATE TABLE team_stats (    
  team_name                  VARCHAR,
  game_id                    INT,
  PRIMARY KEY                (team_name, game_id),

  first_downs_total          INT,
  first_downs_passing        INT,
  first_downs_rushing        INT,
  first_downs_from_penalties INT,
  third_down_efficiency      VARCHAR,
  fourth_down_efficiency     VARCHAR,

  plays_total                INT,

  yards_total                INT,
  yards_per_play             FLOAT,
  total_drives               INT,

  passing_total              INT,
  passing_comp_att           VARCHAR,
  yards_per_pass             FLOAT,
  interceptions_thrown       INT,
  sacks_yards_lost           VARCHAR,

  rushing_total              INT,
  rushing_attempts           INT,
  yards_per_rush             FLOAT,

  red_zone_made_att          VARCHAR,

  penalties_total            VARCHAR,

  turnovers_total            INT,
  turnovers_lost_fumbles     INT,
  turnovers_interceptions    INT,

  possession_total           VARCHAR,

  interceptions_total        INT,
  fumbles_recovered_total    INT,
  sacks_total                INT,
  safeties_total             INT,
  int_touchdowns_total       INT,
  points_against_total       INT
);

CREATE TABLE market ( 
  book          VARCHAR,
  game_id       INT,
  PRIMARY KEY   (book, game_id),
  home_odd      FLOAT,
  away_odd      FLOAT,
);

CREATE TABLE player_stats (
  player_id                    INT,
  player_name                  VARCHAR,
  game_id                      INT,
  PRIMARY KEY                  (player_id, game_id),

  passing_completions          INT,
  passing_attempts             INT,
  passing_yards                INT,
  passing_average              FLOAT,
  passing_touchdowns           INT,
  passing_interceptions        INT,
  passing_sacks                INT,
  passing_sacks_yards_lost     INT,
  passing_rating               FLOAT,
  passing_two_pt               INT,

  rushing_total                INT,
  rushing_yards                INT,
  rushing_average              FLOAT,
  rushing_touchdowns           INT,
  rushing_longest              INT,
  rushing_two_pt               INT,
  rushing_kick_return_td       INT,
  rushing_exp_return_td        INT,

  receiving_targets            INT,
  receiving_total              INT,
  receiving_yards              INT,
  receiving_average            FLOAT,
  receiving_touchdowns         INT,
  receiving_longest            INT,
  receiving_two_pt             INT,

  fumbles_total                INT,
  fumbles_lost                 INT,
  fumbles_rec                  INT,
  fumbles_rec_td               INT,

  interceptions_total          INT,
  interceptions_yards          INT,
  interceptions_touchdowns     INT,

  defensive_tackles            INT,
  defensive_unassisted_tackles INT,
  defensive_sacks              INT,
  defensive_tfl                INT,
  defensive_passes_defended    INT,
  defensive_qb_hits            INT,
  defensive_int_touchdowns     INT,
  defensive_blocked_kicks      INT,
  defensive_kick_return_td     INT,
  defensive_exp_return_td      INT,
  defensive_ff                 INT,

  kick_returns_total           INT,
  kick_returns_yards           INT,
  kick_returns_average         FLOAT,
  kick_returns_long            INT,
  kick_returns_td              INT,
  kick_returns_exp_return_td   INT,

  punt_returns_total           INT,
  punt_returns_yards           INT,
  punt_returns_average         FLOAT,
  punt_returns_long            INT,
  punt_returns_td              INT,

  kicking_field_goals          VARCHAR,
  kicking_pct                  FLOAT,
  kicking_long                 INT,
  kicking_extra_point          VARCHAR,
  kicking_points               INT,
  kicking_fg_1_19              INT,
  kicking_fg_20_29             INT,
  kicking_fg_30_39             INT,
  kicking_fg_40_49             INT,
  kicking_fg_50_plus           INT,

  punting_total                INT,
  punting_yards                INT,
  punting_average              FLOAT,
  punting_touchbacks           INT,
  punting_in20                 INT,
  punting_long                 INT,
);

