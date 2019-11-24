import config from './config.js';

const btnHitAPI = document.getElementById('btnHitAPI');
const result    = document.getElementById('result');

btnHitAPI.addEventListener('click', async () => {
  const response = await fetch(config.apiHost);

  result.innerHTML = JSON.stringify(await response.json(), null, 2);
});
