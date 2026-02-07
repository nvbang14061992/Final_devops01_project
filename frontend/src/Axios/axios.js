import axios from "axios";
const instance = axios.create({
  // baseURL:"http://localhost:8000/api"
  baseURL: "http://152.42.245.131:8000/api",
});
export default instance;
