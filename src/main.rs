use axum::{http::StatusCode, response::IntoResponse, routing::*};

#[tokio::main]
async fn main() {
    let app = Router::new().route("/", get(hello_docker));

    let listener = tokio::net::TcpListener::bind("0.0.0.0:6969").await.unwrap();
    axum::serve(listener, app).await.unwrap();
}

async fn hello_docker() -> Result<impl IntoResponse, StatusCode> {
    Ok((
        StatusCode::OK,
        String::from("Hello docker!").into_response(),
    ))
}
