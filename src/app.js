import express from 'express'
import {login} from "./mocks/user"

const CONTEXT = '/api-mock';
const PORT = 9080;

const app = express();
const router = express.Router();

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "*");
    res.header('Access-Control-Allow-Methods', '*');
    next();
});

// Health Check //
router.get('/', (req, res) => res.send());
router.post('/authentication/login', (req, res) => res.json(login));

app.use(CONTEXT, router);
app.listen(PORT, () => {
    console.log(`Mock app listening on port ${PORT} and context "${CONTEXT}" !`);
});