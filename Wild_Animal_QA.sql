--query 1 distribution by final_category
SELECT 
    final_category,
    COUNT(*) AS image_count,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM meadowbank_prod.remote_cameras.md24_tws_manifest_2024_final
GROUP BY final_category
ORDER BY image_count DESC;

--query 2 list of examples where image has more than one category tagged
select *
from meadowbank_prod.remote_cameras.md24_tws_manifest_2024_final
where final_category = 'Animals, Vehicles'
limit 10

--query 3 distribution by each category of final_category
SELECT
    'animals' AS category,
    COUNT(*) AS image_count
FROM meadowbank_prod.remote_cameras.md24_tws_manifest_2024_final
WHERE lower(final_category) LIKE '%animals%'

UNION ALL
SELECT
    'vehicles' AS category,
    COUNT(*) AS image_count
FROM meadowbank_prod.remote_cameras.md24_tws_manifest_2024_final
WHERE lower(final_category) LIKE '%vehicles%'

UNION ALL
SELECT
    'humans' AS category,
    COUNT(*) AS image_count
FROM meadowbank_prod.remote_cameras.md24_tws_manifest_2024_final
WHERE lower(final_category) LIKE '%humans%';

