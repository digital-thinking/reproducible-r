docker start foo_container
docker exec foo_container git pull origin master
docker exec foo_container Rscript my_r_script.R
docker stop foo_container