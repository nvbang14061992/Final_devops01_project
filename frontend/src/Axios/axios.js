import axios from "axios";
const instance = axios.create({
  // baseURL:"http://localhost:8000/api"
  baseURL: "http://206.189.32.225:8000/api",
});
export default instance;
