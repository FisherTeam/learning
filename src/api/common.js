import axios from 'axios';
import qs from 'qs';

export function putCode(time, buttonText) {
    const text = buttonText || this.getCodeText;
    this.disabled = true;
    let i = time;
    this.getCodeText = `重新获取${i}秒`

    let timer = setInterval(() => {
            this.getCodeText = `重新获取${--i}秒`;
            if (i == 0) {
                clearInterval(timer);
                this.disabled = false;
                this.getCodeText = text;
            }
        }, 1000)
        // axios.post(api, qs.stringify(params)).then(res => {

    // })
}