use std::process::Command;

fn handle_client(){
Command::new("ls")
        .arg("-l")
        .arg("-a")
        .spawn()
        .expect("ls command failed to start");
}


fn main() {
    handle_client()
}
