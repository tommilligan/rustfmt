set RUSTFLAGS="-D warnings"

:: Print version information
rustc -Vv || exit /b
cargo -V || exit /b

:: Build and test main crate
cargo build || exit /b
cargo test || exit /b

:: Build and test other crates
cd config_proc_macro || exit /b
cargo build || exit /b
cargo test || exit /b
