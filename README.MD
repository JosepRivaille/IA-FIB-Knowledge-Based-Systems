# Knowledge Based System | IA-FIB-UPC
## Rico-rico menu generator

#### Content

This practice contains the following:

 * rico_rico.clp | Main clips file with rules and functions.
 * rico_rico.pont | Protégé generated ontology.
 * rico_rico.pins | Protégé generated instances.
 * rico_rico.pins.clp | Protégé generated instances with clips format.
 * rico_rico.pprj | Protégé project.
 * run.bat | Automatizes program execution.
 * instance_generator.py | To automatize instances generation from instance files.
 * Instance files for each class (Ingredient Drink MainCourse SecondCourse Dessert).


#### Run
To run the project you need to have CLIPS installed via CLI. Then just run the following command:

```bash
clips -f2 run.bat
```
If you are unable to install CLIPS via CLI, load each module manually in the same order as it's done in the 'run.bat' file.

#### Generate instances
To re-generate instances via Python script just follow next commands:

```bash
python instance_generator.py Ingredient Drink MainCourse SecondCourse Dessert
```
