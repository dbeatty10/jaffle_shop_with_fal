# jaffle_shop_with_fal

The Python-only `dbt-fal` adapter by [Features & Labels](https://fal.ai/) allows dbt users to run Python locally along with their data platform of choice:
- SQL nodes are handled by the configured dbt adapter
- Python nodes are handled by `fal`

Example use case: developing a predictive model locally using Python DataFrames and DuckDB.

## Install
Create a virtual environment and install dependencies:

```shell
python3 -m venv act1
source act1/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
source act1/bin/activate
```

## Run
Build the dbt project, which builds a predictive model and produces a forecast.
```shell
dbt build
```

## Query

Launch a DuckDB command-line interface (CLI) for interactive queries:
```shell
duckcli jaffle_shop.duckdb
```

Run some queries at the prompt and exit:
Count the number of forecasts and examine a sample:
```
select count(*) from orders_forecast_filter;
select * from orders_forecast_filter limit 5;
exit;
```

---

## References
- [Loom demo](https://www.loom.com/share/26c9da8814d4435cb763cfb4eb3ab5dc) by Gorkem Yurtseven
- original [instructions](https://featuresandlabels.notion.site/Public-Set-up-dbt-fal-Act-1-568b7b0692514f52be161e1129d7dcc8)
