DOS for the Cloud
=================

Still struggling with the migration to Windows95?  Now you can
continue to run all your business critical applications on your new
cloud!

Usage
-----

```
# Interactive prompt (Run "exitemu" to exit)
docker run -ti -e TERM=$TERM anguslees/dockdos

# Run interactive commands directly
docker run -ti -e TERM=$TERM anguslees/dockdos edit c:budget.txt

# Run non-interactive commands (no -ti)
docker run anguslees/dockdos dir d: >/tmp/output.txt

# Similar on Kubernetes (now with 400% more cloud!)
kubectl run dos --rm -ti --restart=Never \
  --image=anguslees/dockdos --env=TERM=$TERM
```
