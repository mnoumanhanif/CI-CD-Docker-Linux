# Final Test Lab

This small folder is the integrated practice test for Lecture 9.

## Purpose

Use this folder to prove three areas together:

- Linux command and shell script usage
- Docker image build and container run
- GitHub Actions workflow run

## Files in this folder

- `.github/workflows/ci.yml`
- `.github/workflows/cd.yml`
- `app/Dockerfile`
- `app/index.html`
- `scripts/check-env.sh`
- `scripts/build-report.sh`

## Suggested student flow

```bash
cd final-test-lab
bash scripts/check-env.sh
bash scripts/build-report.sh
cd app
docker build -t first-test-app .
docker run --rm -p 8088:80 first-test-app
```

After local proof, initialize Git and push the repo to GitHub so the workflow can run.

## Expected Results

Students should be able to show:

- successful shell script execution
- generated report.txt
- Docker container running
- successful CI workflow
- successful CD workflow
- public GitHub Pages URL
- automatic update after a new push
