import axios from "axios";
const instance = axios.create({
  // baseURL:"http://localhost:8000/api"
  baseURL: "http://188.166.255.62:8000/api",
});
export default instance;
