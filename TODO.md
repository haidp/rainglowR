## Uninstall function

- get list of available rainglow themes
- get list of installed packages
- foreach available rainglow package
  - check whether it is installed
    - if yes: rstudioapi uninstall it
    - else: do nothign
    
## Install function

- get list of available rainglow themes 
- get list of installed packages
- foreach available theme
  - check whether it is installed
  - if yes: skip
  - else: rstudioapi install it
