import axios from "axios";
const instance = axios.create({
  // baseURL:"http://localhost:8000/api"
  baseURL: "http://159.65.3.4:8000/api",
});
export default instance;
