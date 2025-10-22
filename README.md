# Haven Kit Umbrel Community App Store

A community app store for Umbrel featuring [Haven](https://github.com/Letdown2491/haven-kit) - a High Availability Vault for Events on Nostr.

## What is Haven?

Haven is a specialized Nostr relay system that provides a complete infrastructure for managing your Nostr presence. It consists of five interconnected relay components:

- **Private Relay**: Secure storage for drafts and sensitive content
- **Chat Relay**: Direct messaging with web-of-trust validation
- **Inbox Relay**: Centralized location for mentions and tags
- **Outbox Relay**: Public-facing storage for your posts
- **Blossom Media Server**: Image and video content hosting

## Features

- Web-based configuration UI for easy setup
- Multi-relay architecture for specialized content handling
- Support for BadgerDB and LMDB database engines
- S3-compatible backup integration
- Blastr relay broadcasting support
- Docker-based deployment for easy installation on Umbrel

## Installation

### Adding the Community App Store

1. Open your Umbrel dashboard
2. Navigate to the App Store
3. Click on "Community App Stores"
4. Add this repository URL:
   ```
   https://github.com/Letdown2491/haven-kit-umbrel
   ```

### Installing Haven

Once you've added the community app store:

1. Find "Haven" in the HAVEN Kit Store section
2. Click "Install"
3. Wait for the installation to complete
4. Access the Haven configuration interface at `http://umbrel.local:8080` (or your Umbrel IP address)

## What's Included

This app store currently features:

- **Haven** - Complete Nostr relay infrastructure with web-based configuration

## Technical Details

### Services

Haven runs two main services:

1. **haven_relay** (Port 3355): The core relay engine built from the [bitvora/haven](https://github.com/bitvora/haven) project
2. **config_ui** (Port 8080): Flask-based web interface for configuration

### Docker Images

The app uses the following Docker images:
- `letdown2491/haven-relay:latest`
- `letdown2491/haven-config-ui:latest`

### Data Persistence

Haven stores its data in the following Umbrel-managed volumes:
- Configuration files: `${APP_DATA_DIR}/config`
- Blossom media: `${APP_DATA_DIR}/blossom`
- Database: `${APP_DATA_DIR}/db`

## Configuration

After installation, access the web UI to configure:

- Relay settings (Private, Chat, Inbox, Outbox, Blossom)
- Database engine selection (BadgerDB/LMDB)
- Backup providers and S3 integration
- Blastr relay connections for broadcasting

## Support

- Haven Kit Issues: [https://github.com/Letdown2491/haven-kit/issues](https://github.com/Letdown2491/haven-kit/issues)
- App Store Issues: [https://github.com/Letdown2491/haven-kit-umbrel/issues](https://github.com/Letdown2491/haven-kit-umbrel/issues)

## Developer

Developed and maintained by [Letdown2491](https://github.com/Letdown2491)

## License

This project follows the licensing of the upstream Haven project. See the [Haven Kit repository](https://github.com/Letdown2491/haven-kit) for more details.

## About Umbrel Community App Stores

Umbrel Community App Stores allow developers to distribute applications without submitting to the Official Umbrel App Store. This enables faster iteration and community-driven app distribution.

For more information about creating Umbrel apps, visit the [Official Umbrel App Store](https://github.com/getumbrel/umbrel-apps).
