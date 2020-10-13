The aim of this project is to turn the entire internet to Dark Mode. For this, a userContent.css file is being developed that has to be moved to the user's Profiles/chrome folder. This is supposed to replace things like the Stylish extension since those tend to be intransparent.

Installing the custom Styles: 
1. Open Firefox and press Alt to show the top menu, then click on Help → Troubleshooting Information
2. Click the Open Folder button beside the Profile Folder entry
3. Create a folder named chrome in the directory that opens (if not present)
4. Copy the provided userContent.css into the chrome folder
5. Restart the browser if necessary

Websites that already provide their own Dark Mode or are dark by default are not being worked on for now. The focus is on the sites where it is necessary. (Although having a consistent design across all websites is a nice long-term goal). 

Development is primarily conducted for Firefox, should there be bugs for Chrome and interest in fixing those, create an Issue (or consider switching to Firefox).

The color scheme is oriented around the YouTube Dark Mode. The less colors used the better.

All colors have to be declared as variables for easy editing and theme-creation.

Should there be interest, there could be development started into a little application that lets you select the sites you want styles for and generates the userContent.css file from that.

As long as I haven't added a LICENSE file, be sure that I agree to all non-commercial uses of my code.

Also if you want to help in the development, please do. I've never managed a public project before but I'm sure we can figure it out if there should be interest.

### Development

Firefox needs to be restarted for it to reread userContent.css and this project is best not saved in the profiles folder.
Therefore the file can be edited here and is automatically copied to the required destination while
`copyUserContent.bat` is running (on Windows). Make sure the `chrome` folder is present.

To restart Firefox, you can run `restartFF.bat` (on Windows).