# System Architecture

## Overview

The Real Estate Lead Intake Automation System automates the processing of inbound property leads.

Incoming leads are received through an n8n Webhook, validated, enriched, checked for duplicates, stored in PostgreSQL, and forwarded to the sales team through email notifications.

## Architecture
Client / Website
│
▼
n8n Webhook
│
▼
Store Raw Lead
│
▼
Sanitize & Validate
│
▼
Duplicate Detection
│
┌────┴────┐
▼         ▼
Insert Update
│
▼
Business Rules
│
▼
Email Notification
│
▼
PostgreSQL Logging

Error Trigger
│
▼
Workflow Error Logs


## Components

- n8n – Workflow orchestration
- PostgreSQL – Persistent data storage
- Gmail – Email notifications
- Docker – Local PostgreSQL deployment
- JavaScript – Validation and business logic