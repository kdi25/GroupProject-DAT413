 This dataset was built to recognise six physical activities performed by 30 volunteers wearing a Samsung Galaxy S II smartphone on the waist. The phone's embedded accelerometer and gyroscope recorded 3-axial linear acceleration and 3-axial angular velocity at 50 Hz.


| Partition | Subjects | Observations |
|-----------|----------|-------------|
| Training  | 21       | 7,352       |
| Test      | 9        | 2,947       |
| **Total** | **30**   | **10,299**  |


| Column     | Type      | Description                                  |
|------------|-----------|----------------------------------------------|
| `subject`  | Integer   | Volunteer ID, 1–30                           |
| `activity` | Character | One of six activity labels (see table below) |



| Code | Label               |
|------|---------------------|
| 1    | WALKING             |
| 2    | WALKING_UPSTAIRS    |
| 3    | WALKING_DOWNSTAIRS  |
| 4    | SITTING             |
| 5    | STANDING            |
| 6    | LAYING              |

---




```
avg_<domain><Signal><Statistic>-<Axis>
```

| Token          | Values                                  | Meaning                                 |
|----------------|-----------------------------------------|-----------------------------------------|
| domain         | `time`, `frequency`                     | Time-domain or FFT frequency-domain     |
| Signal         | `BodyAccelerometer`, `GravityAccelerometer`, `BodyGyroscope`, + `JerkSignal`, `Magnitude` suffixes | Sensor and decomposition |
| Statistic      | `Mean`, `StdDev`                        | Mean or standard deviation              |
| Axis (optional)| `X-Axis`, `Y-Axis`, `Z-Axis`           | Spatial direction; absent for magnitudes |

**Units:**
- All features are **normalised and bounded within [−1, 1]** (dimensionless). The original accelerometer values were in standard gravity units (*g*); gyroscope values were in radians/second. Normalisation removed physical units.



| # | Column name |
|---|-------------|
| 1 | timeBodyAccelerometer.Mean.X.Axis |
| 2 | timeBodyAccelerometer.Mean.Y.Axis |
| 3 | timeBodyAccelerometer.Mean.Z.Axis |
| 4 | timeBodyAccelerometer.StdDev.X.Axis |
| 5 | timeBodyAccelerometer.StdDev.Y.Axis |
| 6 | timeBodyAccelerometer.StdDev.Z.Axis |
| 7 | timeGravityAccelerometer.Mean.X.Axis |
| 8 | timeGravityAccelerometer.Mean.Y.Axis |
| 9 | timeGravityAccelerometer.Mean.Z.Axis |
| 10 | timeGravityAccelerometer.StdDev.X.Axis |
| 11 | timeGravityAccelerometer.StdDev.Y.Axis |
| 12 | timeGravityAccelerometer.StdDev.Z.Axis |
| 13 | timeBodyAccelerometerJerkSignal.Mean.X.Axis |
| 14 | timeBodyAccelerometerJerkSignal.Mean.Y.Axis |
| 15 | timeBodyAccelerometerJerkSignal.Mean.Z.Axis |
| 16 | timeBodyAccelerometerJerkSignal.StdDev.X.Axis |
| 17 | timeBodyAccelerometerJerkSignal.StdDev.Y.Axis |
| 18 | timeBodyAccelerometerJerkSignal.StdDev.Z.Axis |
| 19 | timeBodyGyroscope.Mean.X.Axis |
| 20 | timeBodyGyroscope.Mean.Y.Axis |
| 21 | timeBodyGyroscope.Mean.Z.Axis |
| 22 | timeBodyGyroscope.StdDev.X.Axis |
| 23 | timeBodyGyroscope.StdDev.Y.Axis |
| 24 | timeBodyGyroscope.StdDev.Z.Axis |
| 25 | timeBodyGyroscopeJerkSignal.Mean.X.Axis |
| 26 | timeBodyGyroscopeJerkSignal.Mean.Y.Axis |
| 27 | timeBodyGyroscopeJerkSignal.Mean.Z.Axis |
| 28 | timeBodyGyroscopeJerkSignal.StdDev.X.Axis |
| 29 | timeBodyGyroscopeJerkSignal.StdDev.Y.Axis |
| 30 | timeBodyGyroscopeJerkSignal.StdDev.Z.Axis |
| 31 | timeBodyAccelerometerMagnitude.Mean |
| 32 | timeBodyAccelerometerMagnitude.StdDev |
| 33 | timeGravityAccelerometerMagnitude.Mean |
| 34 | timeGravityAccelerometerMagnitude.StdDev |
| 35 | timeBodyAccelerometerJerkSignalMagnitude.Mean |
| 36 | timeBodyAccelerometerJerkSignalMagnitude.StdDev |
| 37 | timeBodyGyroscopeMagnitude.Mean |
| 38 | timeBodyGyroscopeMagnitude.StdDev |
| 39 | timeBodyGyroscopeJerkSignalMagnitude.Mean |
| 40 | timeBodyGyroscopeJerkSignalMagnitude.StdDev |
| 41 | frequencyBodyAccelerometer.Mean.X.Axis |
| 42 | frequencyBodyAccelerometer.Mean.Y.Axis |
| 43 | frequencyBodyAccelerometer.Mean.Z.Axis |
| 44 | frequencyBodyAccelerometer.StdDev.X.Axis |
| 45 | frequencyBodyAccelerometer.StdDev.Y.Axis |
| 46 | frequencyBodyAccelerometer.StdDev.Z.Axis |
| 47 | frequencyBodyAccelerometerJerkSignal.Mean.X.Axis |
| 48 | frequencyBodyAccelerometerJerkSignal.Mean.Y.Axis |
| 49 | frequencyBodyAccelerometerJerkSignal.Mean.Z.Axis |
| 50 | frequencyBodyAccelerometerJerkSignal.StdDev.X.Axis |
| 51 | frequencyBodyAccelerometerJerkSignal.StdDev.Y.Axis |
| 52 | frequencyBodyAccelerometerJerkSignal.StdDev.Z.Axis |
| 53 | frequencyBodyGyroscope.Mean.X.Axis |
| 54 | frequencyBodyGyroscope.Mean.Y.Axis |
| 55 | frequencyBodyGyroscope.Mean.Z.Axis |
| 56 | frequencyBodyGyroscope.StdDev.X.Axis |
| 57 | frequencyBodyGyroscope.StdDev.Y.Axis |
| 58 | frequencyBodyGyroscope.StdDev.Z.Axis |
| 59 | frequencyBodyAccelerometerMagnitude.Mean |
| 60 | frequencyBodyAccelerometerMagnitude.StdDev |
| 61 | frequencyBodyAccelerometerJerkSignalMagnitude.Mean |
| 62 | frequencyBodyAccelerometerJerkSignalMagnitude.StdDev |
| 63 | frequencyBodyGyroscopeMagnitude.Mean |
| 64 | frequencyBodyGyroscopeMagnitude.StdDev |
| 65 | frequencyBodyGyroscopeJerkSignalMagnitude.Mean |
| 66 | frequencyBodyGyroscopeJerkSignalMagnitude.StdDev |

---

## Missing Data Handling

The original UCI dataset contains **no missing values**. All 561 feature columns are fully populated for all 10,299 observations. No imputation, removal, or substitution of missing values was required. The script includes a final check (`any(is.na(tidy_data))`) to confirm no NAs exist in the output.

---

## Data Processing

The script `GroupWork.R` performs the following steps in order:

### Step 1 — Merge training and test datasets
- Loaded `X_train.txt`, `y_train.txt`, and `subject_train.txt` (7,352 rows).
- Loaded `X_test.txt`, `y_test.txt`, and `subject_test.txt` (2,947 rows).
- Row-bound each pair using `rbind()`, then column-bound subject, activity, and features with `cbind()`.
- Result: **10,299 rows × 563 columns**.

### Step 2 — Extract mean and standard deviation columns
- Applied `grep("mean\\(\\)|std\\(\\)", ...)` to `features.txt` to find all columns whose names include `mean()` or `std()`.
- Excluded `meanFreq()` columns (weighted frequency averages, not simple signal means).
- Result: **66 measurement columns** retained, plus subject and activity.

### Step 3 — Replace activity codes with descriptive names
- Joined the merged dataset with `activity_labels.txt` on `activity_id`.
- Replaced the numeric code column with the corresponding character label (e.g., `1` → `"WALKING"`).

### Step 4 — Apply descriptive variable names
A `make_descriptive()` helper function expanded cryptic abbreviations:

| Original token | Expanded form |
|----------------|---------------|
| `t` prefix     | `time`        |
| `f` prefix     | `frequency`   |
| `Acc`          | `Accelerometer` |
| `Gyro`         | `Gyroscope`   |
| `Mag`          | `Magnitude`   |
| `Jerk`         | `JerkSignal`  |
| `-mean()`      | `-Mean`       |
| `-std()`       | `-StdDev`     |
| `-X/-Y/-Z`     | `-X-Axis/-Y-Axis/-Z-Axis` |

Special characters (`(`, `)`, `-`) were replaced with `.` and consecutive dots collapsed.

### Step 5 — Create the tidy summary dataset
- Grouped by `subject` and `activity`.
- Calculated `mean()` of every measurement column using `dplyr::summarise(across(...))`.
- All output measurement columns are prefixed with `avg_` to indicate they are averages.
- Sorted by `subject` then `activity`.
- Result: **180 rows** (30 subjects × 6 activities) × **68 columns**.

---

## Code Instructions

### Prerequisites
- R ≥ 4.0
- Packages: `dplyr`, `tidyr` (auto-installed by the script if missing)

### Directory layout
```
project-root/
├── GroupWork.R
├── UCI HAR Dataset/          ← unzipped dataset folder
│   ├── activity_labels.txt
│   ├── features.txt
│   ├── train/
│   └── test/
```

### Running the script
```r
# In R or RStudio, set working directory to project root, then:
source("GroupWork.R")
```

## Outputs
| File             | Description                                              |
|------------------|----------------------------------------------------------|
| `tidy_data.txt`  | Space-delimited, header row, no row names — for submission |
| `tidy_data.csv`  | Comma-delimited — for convenience / Excel import        |


```r
df <- read.table("tidy_data.txt", header = TRUE)
```

---


- **Supervised classification** — predicting activity from sensor averages per subject
- **Subject-level clustering** — grouping participants by movement profile
- **Feature importance analysis** — identifying which sensor signals best discriminate activities
- **Longitudinal or repeated-measures modelling** — treating subject as a random effect


