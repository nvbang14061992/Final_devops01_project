import axios from "axios";
const instance = axios.create({
  // baseURL:"http://localhost:8000/api"
  baseURL: "http://159.223.74.8:8000/api",
});
export default instance;
