# AWS Tools

## Features

- (aws-cli)[https://github.com/aws/aws-cli]
- (aws-adfs)[https://github.com/funfin/aws-adfs]

## Usage

```bash
docker run -it --rm -v ~/.aws:/root/.aws srault95/aws-tools aws-adfs --help

docker run -it --rm -v ~/.aws:/root/.aws srault95/aws-tools aws help
```

## Example - AWS Login with ADFS

```bash
docker run -it --rm -v ~/.aws:/root/.aws srault95/aws-tools aws-adfs login \
   --adfs-host=YOUR_ADFS_HOST \
   --no-ssl-verification \
   --role-arn arn:aws:iam::YOUR_SUBSCRIBE_ID:role/YOUR_ROLE

# display environment variables AWS_*
docker run -it --rm -v ~/.aws:/root/.aws srault95/aws-tools aws-adfs login --printenv
```
