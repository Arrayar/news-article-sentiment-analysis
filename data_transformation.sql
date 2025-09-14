SELECT
    id,
    type,
    sectionId,
    sectionName,
    webTitle,
    webUrl,
    
    SAFE_CAST(webPublicationDate AS TIMESTAMP) AS webPublicationDate,
    
    SAFE_CAST(fields.wordcount AS INT64) AS wordcount,
    
    JSON_EXTRACT_SCALAR(tag, '$.webTitle') AS author_name
FROM
    
    `guardian-news-analysis.guardian_news.articles`,
    
    UNNEST(JSON_EXTRACT_ARRAY(tags)) AS tag