# jaffle_shop_with_fal

The Python-only `dbt-fal` adapter by [Features & Labels](https://fal.ai/) allows dbt users to run Python locally along with their data platform of choice:
- SQL nodes are handled by the configured dbt adapter
- Python nodes are handled by `fal`

Example use case: developing a predictive model locally using Python DataFrames and DuckDB.

## Install
Create a virtual environment and install dependencies:

```shell
python3 -m venv env
source env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
source env/bin/activate
```

## Run
Build a predictive model and sales forecast.
```shell
dbt build
```

## Query

Launch a DuckDB command-line interface (CLI) for interactive queries:
```shell
duckcli jaffle_shop.duckdb
```

Examine a sample of the individual forecasts and exit the CLI:
```
select * from orders_forecast_filter limit 1;
exit;
```

## Wrap up 
Deactivate the virtual environment when finished:

```shell
deactivate
```


---

## References
- [Loom demo](https://www.loom.com/share/26c9da8814d4435cb763cfb4eb3ab5dc) by Gorkem Yurtseven
- original [instructions](https://featuresandlabels.notion.site/Public-Set-up-dbt-fal-Act-1-568b7b0692514f52be161e1129d7dcc8)
