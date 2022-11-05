CREATE TABLE histories (
    id bigint generated BY
        DEFAULT AS identity PRIMARY KEY,
        created_at timestamp WITH time zone DEFAULT timezone(
            'utc'::text, now(
)
) NOT NULL,
        updated_at timestamp WITH time zone DEFAULT timezone(
            'utc'::text, now(
)
) NOT NULL,
        user_id uuid NOT NULL,
        media_type varchar NOT NULL,
        media_id varchar NOT NULL,
        duration bigint NOT NULL,
        title varchar,
        route varchar NOT NULL,
        watched bigint,
        poster varchar,
        overview text,
        season varchar,
        episode varchar
);