use std::env;
use std::fs;
use std::path::Path;

fn main() {
    let args: Vec<String> = env::args().collect();
    let mut lst = Vec::new();

    for arg in &args[1..] {
        if Path::new(arg).is_dir() {
            for entry in fs::read_dir(arg).unwrap() {
                let entry = entry.unwrap();
                let path = entry.path();
                if path.is_file() {
                    lst.push((
                        entry.file_name().to_str().unwrap().to_string(),
                        path.to_str().unwrap().to_string(),
                    ));
                }
            }
        }
    }

    lst.sort_by_key(|x| x.0.clone());
    for (_, path) in lst {
        println!("{}", path);
    }
}
