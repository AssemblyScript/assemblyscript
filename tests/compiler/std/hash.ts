import { hash } from "internal/hash";

declare function logi(i: i32): void;

logi(hash<string>(null));
logi(hash<string>(""));
logi(hash<string>("a"));
logi(hash<string>("ab"));
logi(hash<string>("abc"));

logi(hash<f32>(0.0));
logi(hash<f32>(1.0));
logi(hash<f32>(1.1));
logi(hash<f32>(-0));
logi(hash<f32>(Infinity));
logi(hash<f32>(NaN));

logi(hash<f64>(0.0));
logi(hash<f64>(1.0));
logi(hash<f64>(1.1));
logi(hash<f64>(-0));
logi(hash<f64>(Infinity));
logi(hash<f64>(NaN));
