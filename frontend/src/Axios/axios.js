import axios from "axios";
const instance = axios.create({
  // baseURL:"http://localhost:8000/api"
  baseURL: "http://146.190.105.244:8000/api",
});
export default instance;
