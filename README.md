# Pluralsight-parser
Get direct courses link from paths/certification prep center.

## Use case
1. Integrating 3rd party time management tool (add direct course link to your calendar, set a specific time/date to learn a course from a path).

## This bash script uses grep, tidy, sed, and awk. Everything (- tidy) should be installed by default on Linux. You should be able to get tidy from your package manager.
## This bash script uses both pluralsight.txt and pluralsight2.txt. Please make sure that you run this script on its own folder/you don't have any files with the same name.

## How to use
1. Clone/copy/download the repo/start.sh.
2. Open Pluralsight and select a path.
3. Open developer tools and select the "Elements" section.
4. Right-click on <html lang="en-US"> (right below <!DOCTYPE html>) and select "Edit as HTML".
5. Select all (Ctrl + a) and copy (Ctrl + v).
6. Create pluralsight.txt in the same folder the start.sh is in.
7. Paste the copied HTML to the pluralsight.txt and save the file.
8. Run start.sh (`bash start.sh`)
9. Open pluralsight.txt. You should be able to see your links there.
