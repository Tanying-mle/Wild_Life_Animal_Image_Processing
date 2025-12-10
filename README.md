# Wild_Life_Animal_Image_Processing
Analysis of approximately 2.5 million camera-trap images from the Meadowbank site revealed an extremely low level of wildlife presence during the 2024 monitoring period. Both manual validation and automated model assessments reached the same conclusion: wildlife occurrences were rare to nonexistent across the dataset. 

While manual validation suggests wildlife occurrence <1%, a small number of images do include animals such as: 

Small mammals (ex. Rabbits)  

Mid - Large mammals (Wolves, Foxes, Moose, Deer, Cattle, Caribou, Coyotes...) 

Birds 

## Confirmation of delivery 

Wild Animal Detection Summary.xlsx clearly listed all the major steps with detailed analyses 

meadowbank_prod.remote_cameras.md24_tws_manifest_2024_fianl summarized all the key output, final_category and json_output column including confidence and bounding box info from both of the models 

Clean python code (can be easily ‘Run All’ once finished configuration in the first console): 

[Main] Wild Animal Detection Final.ipynb  

Output 1. Generate Final Manifest Table.ipynb to generate the manifest final table including json_output column 

Output 2. Write Tagged Image to Designated Folder to draw bounding boxes on images then save to designated folder 

Volume Catalog Table Cleaning.ipynb for cleaning not needed volume tables 

Manual Validation.ipynb to quickly browse through hundreds of images for model precision estimates 

## Additional:  

tagged animal/vehicle/human images saved in designated folder at: Volumes/meadowbank_prod/remote_cameras/mbk_remote_cameras_blob/results/2024_TWS 

Wild Animal Data Dictionary.xlsx 

Wild Animal QA.sql (the SQL script for SQL users to easily use manifest table) 

Wild Animal QA.xlsx expected output from part c 

‘Supporting Analyses Folder’ includes 

Group Images Based on Timestamp and File Name.ipynb that generate md24_tws_event_id_2024 table with group_id  

Images by Cameara 4. ipynb 

Post-processing filter analyes.ipynb (motion score logic) 

## Overall project success 

The manual validation involves 10 randomly selected images for the scope of the work. Then to support the final threshold decision making, we randomly selected 100 images for 0.5 threshold as well as 0.2 threshold, through manual validation, 63 images and 37 images retruend as wild animals out of the 100 images tagged by the model, that gives us 63% precision with 0.5 threshold and 37% precision with 0.2 threshold 
<img width="870" height="677" alt="image" src="https://github.com/user-attachments/assets/4684c19e-9e93-4458-837f-d2ceec085036" />

