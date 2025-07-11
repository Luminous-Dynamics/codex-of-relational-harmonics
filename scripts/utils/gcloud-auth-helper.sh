#!/bin/bash

echo "🔐 Google Cloud Authentication Helper"
echo "===================================="
echo ""
echo "Please run one of these commands in your terminal:"
echo ""
echo "Option 1: Browser-based login"
echo "  gcloud auth login"
echo ""
echo "Option 2: Application default credentials"
echo "  gcloud auth application-default login"
echo ""
echo "Option 3: Service account (if you have a key file)"
echo "  gcloud auth activate-service-account --key-file=path/to/key.json"
echo ""
echo "After authentication, we can deploy to Cloud Functions!"
echo ""
echo "Current project: $(gcloud config get-value project)"
echo "Current account: $(gcloud config get-value account)"