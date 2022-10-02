# jaffle_shop_with_fal

The Python-only `dbt-fal` adapter by [Features & Labels](https://fal.ai/) allows dbt users to run Python locally along with their data platform of choice:
- SQL nodes are handled by the configured dbt adapter
- Python nodes are handled by `fal`

Example use case: developing a predictive model locally using Python DataFrames and DuckDB.

## Install
Create a virtual environment and install dependencies:

<details open>
<summary>POSIX bash/zsh</summary>

```shell
python3 -m venv env
source env/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
source env/bin/activate
```

</details>

<details>
<summary>POSIX fish</summary>

```shell
python3 -m venv env
source env/bin/activate.fish
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
source env/bin/activate.fish
```
</details>

<details>
<summary>POSIX csh/tcsh</summary>

```shell
python3 -m venv env
source env/bin/activate.csh
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
source env/bin/activate.csh
```
</details>

<details>
<summary>POSIX PowerShell Core</summary>

```shell
python3 -m venv env
env/bin/Activate.ps1
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
env/bin/Activate.ps1
```
</details>

<details>
<summary>Windows cmd.exe</summary>

```shell
python -m venv env
env\Scripts\activate.bat
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
env\Scripts\activate.bat
```
</details>

<details>
<summary>Windows PowerShell</summary>

```shell
python -m venv env
env\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
env\Scripts\Activate.ps1
```
</details>

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
