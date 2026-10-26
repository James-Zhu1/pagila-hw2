/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */
SELECT DISTINCT first_name || ' ' || last_name AS "Actor Name"
FROM (
    SELECT unnest(special_features) AS special_feature, film_id
    FROM film
) AS t
JOIN film_actor USING (film_id)
JOIN actor USING (actor_id)
WHERE special_feature = 'Behind the Scenes'
ORDER BY "Actor Name";
