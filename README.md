# MAX

The MAX repository contains the minimal core required to run the MAX system. This root-level structure is intentionally simple and clean, with all automation isolated inside the `.github` directory.

## Repository Structure

MAX/
│
├── README.md
├── workflow.yml
│
└── .github/
    └── workflows/
        └── max-runtime-option-a.yml

## Files and Folders

### README.md
You are reading it now. This file documents the purpose and structure of the repository.

### workflow.yml
A root-level workflow file used for general automation or testing. This file is separate from the MAX runtime options stored under `.github/workflows`.

### .github/workflows/
This folder contains GitHub Actions workflows used by the repository.

#### max-runtime-option-a.yml
The only active MAX runtime workflow. Options B, C, and D have been removed to keep the system clean and aligned.

## Purpose

This repository is the foundation for the MAX system. It is intentionally minimal, containing only:

- one documentation file  
- one root workflow  
- one GitHub Actions workflow  

Everything else is added later as the engine expands.

## Status

The repository is in a clean, correct state. All unnecessary files and folders have been removed.
