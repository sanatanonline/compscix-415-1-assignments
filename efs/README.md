# edl3.0 - a better way to predict student loan default rate

Welcome to edl3.0

This file introduces you to edl3.0 R package. This package is used for the easy to use functions that predicts the student loan default rate.

## Package information

**Package Name**: edl3.0

**Title**: edl3.0 - predict student loan default rate

**Version** : 3.0

**Author**: Sanatan Das

**Description**: The edl3.0 package is used to predict the student loan default rate.

**Depends**: R (>= 3.4.3)

**License**: GPL

**Encoding**: UTF-8


## Pre-requisites

You should have the below packages installed in your R environment to install the edl3.0 package as it has dependencies on these packages.

* tidyverse
* readxl
* broom
* knitr
* earth
* devtools

## Installation

You can run the following command from your R tesrminal for easy installation.

    install_github('sanatanonline/edl3.0')
    library('edl3.0')
	
After you have successfully installed you can call the predict default rate function passing the test data as input. You can see the help for more details using the below command.

    ?predict_default_rate

## Test Data

You have to use the following columns to create a test data frame.

* OPEID - Office of Postsecondary Education Identifier
* Name - Institution's Name
* Address - Street Address
* City - City
* State - State Abbreviation
* State Desc - State Name
* Zip - Zip Code
* Zip Ext - Zip Code Extension
* Program Length - The length of the longest program offered by the institution:

                    0—Short-Term (300–599 hours)
                    1—Graduate/Professional (≥ 300 hours)
                    2—Non-Degree (600–899 hours)
                    3—Non-Degree 1 Year (900–1799 hours)
                    4—Non-Degree 2 Years (1800–2699 hours)
                    5—Associate's Degree
                    6—Bachelor's Degree
                    7—First Professional Degree
                    8—Master's Degree or Doctor's Degree
                    9—Professional Certification
                    10—Undergraduate (Previous Degree Required)
                    11—Non-Degree 3 Plus Years (≥ 2700 hours)
                    12—Two-Year Transfer

* Sch Type - The code identifying the ownership control of the institution:

                    1—Public
                    2—Private, Nonprofit
                    3—Proprietary
                    5—Foreign public
                    6—Foreign private
                    7—Foreign For-Profit

* PRate - Identifies what type of rate was calculated for the institution.

                    A—Actual
                    B—Average,
                    S—Substituted, or
                    P—Lead School Combo
                    
* Ethnic Code - The code classifying the ethnic affiliation of the institution:

                    1—Native American
                    2—HBCU
                    3—Hispanic
                    4—Traditionally Black College
                    5—Ethnicity Not Reported

* Cong Dis - Congressional District—The congressional district of the main institution


For more details about edl3.0, see https://github.com/sanatanonline/csx415-project/tree/master/efs
