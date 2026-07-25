# Workflow Overview

## Purpose

This workflow automates the intake and qualification of real estate leads while improving data quality and reducing manual work.

## Processing Steps

### 1. Receive Lead

The workflow starts when a lead is submitted through an HTTP Webhook.

### 2. Store Raw Lead

The original payload is stored before any modifications are made.

### 3. Sanitize Data

Incoming values are cleaned and normalized into a consistent format.

### 4. Validate Lead

Required fields and contact information are validated.

Invalid leads are marked and processing stops.

### 5. Detect Duplicates

Existing leads are searched using source identifiers and contact information.

New leads are inserted.

Existing leads are updated.

### 6. Business Rules

The workflow determines lead priority and applies enrichment rules.

### 7. Notify Sales Team

Qualified leads trigger an email notification to the assigned team.

### 8. Log Notifications

Notification attempts and delivery status are stored.

### 9. Error Handling

Any workflow failure is captured by a centralized Error Trigger workflow and written to the error log.