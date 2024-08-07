-- Create the script to list Glam rock bands ranked by their longevity
SELECT
    band_name,
    (2022 - formed - COALESCE(split, 2022)) AS lifespan
FROM
    bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;
