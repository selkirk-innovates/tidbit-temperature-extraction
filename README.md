# TidbiT-temperature-extraction
This is for reading, plotting, interpolating temperature measurments form HOBO TidbiT temperature loggers. The intended use is to have an estimate of temperature measurements for a given TidbiT (via name or ID) at a given time. This can be used to compare TidbiT measurements with temperature values in a thermal orthomosaic. This repository is designed for Selkirk Innovates internal used, but can of course be adapted.

# The Problem
Consider you have a thermal orthomosaic of a study area, with maybe ten TidbiT temperature loggers distributed across the study area. You then want to extract the temperature measured by the TidbiT loggers at the time of the survey. But the larger the study area, and the longer the duration of it takes to complete the survey, the less the assumtion holds that each pixel has a constant temperature for the time of the survey. Therefore, to compare the TidbiT measurements with the orthomosaic, it would be crucial to know the time the drone passed over a particular TidbiT's location, and then extract the temperature measured by this particular TidbiT at this particular time. As the problem suggests, there are two steps in this process: First, to extract the time the drone passes over the TidbiTs location. Second, to extract the temperautre of the TidbiT at this specific time.

# Usage
## Step 1: Extract Times of the orthomosaic
This repository is built for extracting temperatures in Agisoft Metashape, but I am sure this can be adapted to work in other environments.

