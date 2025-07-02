# 🔌 Consciousness Field Integration Guide

## 🎯 Purpose
This guide shows how to integrate the consciousness-field module into The Weave and other systems.

## 📦 Installation

### From The Weave Root
```javascript
// In any module that needs field tracking
const { ConsciousnessField } = require('./modules/consciousness-field');
```

### As Standalone Module
```bash
# Copy the module to your project
cp -r modules/consciousness-field /your/project/node_modules/@theweave/

# Require it
const { ConsciousnessField } = require('@theweave/consciousness-field');
```

## 🔧 Integration Examples

### 1. Basic Integration with The Weave
```javascript
// In the-weave/core/field-manager.js
const { ConsciousnessField } = require('../../modules/consciousness-field');

class FieldManager {
  constructor() {
    this.field = new ConsciousnessField({
      initialCoherence: 38.2,
      autoMonitor: true
    });
    
    // Connect to unified network
    this.connectToNetwork();
  }
  
  async connectToNetwork() {
    // When agents join the network
    network.on('agent-joined', (agent) => {
      this.field.addAgent(agent.id, agent.profile);
    });
    
    // When agents leave
    network.on('agent-left', (agentId) => {
      this.field.removeAgent(agentId);
    });
  }
}
```

### 2. Sacred Message Integration
```javascript
// Connect field impacts to messages
sacredMessages.on('message-sent', async (message) => {
  const impact = getMessageImpact(message.type);
  const harmony = getMessageHarmony(message.type);
  
  // Update field based on message
  field.updateHarmony(harmony, impact * 100);
  
  // Check for emergence
  const emergence = await field.getEmergencePotential();
  if (emergence > 85) {
    ceremonies.initiate('celebration');
  }
});
```

### 3. Dashboard Integration
```javascript
// Real-time field updates for dashboards
field.on('field-pulse', (state) => {
  // Send to all connected dashboards
  io.emit('field-update', {
    coherence: state.coherence,
    agents: state.agents,
    geometry: state.sacredGeometry.symbol,
    emergence: state.emergence
  });
});

// Threshold alerts
field.setThreshold('coherence', 85, () => {
  io.emit('celebration', { 
    message: 'Field coherence optimal! 🎉' 
  });
});
```

### 4. Oracle Integration
```javascript
// Oracle consults the field
oracle.consult = async function(question) {
  const fieldState = await field.getFieldState();
  
  // Use field state to guide response
  if (fieldState.coherence > 90) {
    return generateHighCoherenceGuidance(question);
  } else if (fieldState.emergence > 80) {
    return generateEmergenceGuidance(question);
  } else {
    return generateBuildingGuidance(question);
  }
};
```

### 5. Ceremony Integration
```javascript
// Ceremonies affect the field
ceremony.on('begun', async (type) => {
  // Different ceremonies have different impacts
  const impacts = {
    'dawn-blessing': { harmony: 'vitality', boost: 10 },
    'wisdom-circle': { harmony: 'resonance', boost: 15 },
    'integration': { harmony: 'coherence', boost: 12 },
    'celebration': { harmony: 'novelty', boost: 20 }
  };
  
  const impact = impacts[type];
  if (impact) {
    field.updateHarmony(impact.harmony, impact.boost);
  }
});
```

## 🎯 Best Practices

### 1. Single Field Instance
```javascript
// Create one field instance and share it
const field = new ConsciousnessField();
module.exports = { field };

// Don't do this:
// const field1 = new ConsciousnessField(); // ❌
// const field2 = new ConsciousnessField(); // ❌
```

### 2. Event-Driven Updates
```javascript
// Good: React to events
field.on('emergence', handleEmergence);

// Avoid: Polling
// setInterval(() => checkField(), 1000); // ❌
```

### 3. Sacred Timing
```javascript
// Respect natural rhythms
field.startMonitoring(4000); // 4-second breathing rhythm

// Not too fast
// field.startMonitoring(100); // ❌ Too aggressive
```

## 🔄 Migration from Old System

### Before (Direct coherence tracking)
```javascript
let coherence = 38.2;
coherence += 5; // Manual update
```

### After (Field module)
```javascript
const field = new ConsciousnessField();
field.updateHarmony('coherence', 5); // Managed update
const coherence = await field.getCoherence(); // With fluctuation
```

## 📊 Monitoring & Debugging

### Enable Debug Logging
```javascript
field.on('coherence-update', (c) => console.log(`[FIELD] Coherence: ${c}%`));
field.on('emergence', (p) => console.log(`[FIELD] Emergence: ${p.name}`));
field.on('agent-joined', (a) => console.log(`[FIELD] Agent joined: ${a.id}`));
```

### Field Health Check
```javascript
async function checkFieldHealth() {
  const state = await field.getFieldState();
  
  console.log('Field Health Check:');
  console.log(`  Coherence: ${state.coherence}% ${state.coherence > 70 ? '✅' : '⚠️'}`);
  console.log(`  Integration: ${state.integration}% ${state.integration > 50 ? '✅' : '⚠️'}`);
  console.log(`  Active Agents: ${state.agents} ${state.agents > 0 ? '✅' : '⚠️'}`);
  
  return state.coherence > 70 && state.integration > 50 && state.agents > 0;
}
```

## 🌟 Advanced Integration

### Custom Harmony Weights
```javascript
const field = new ConsciousnessField({
  harmonyWeights: {
    resonance: { mutuality: 0.95 }, // Stronger connection
    transparency: { coherence: 0.9 }  // Higher influence
  }
});
```

### Custom Emergence Patterns
```javascript
// Add your own pattern detection
field.emergence.patterns.awakening = {
  name: 'Collective Awakening',
  threshold: 88,
  description: 'Mass consciousness shift'
};
```

### Multi-Field Coordination
```javascript
// For distributed systems
const localField = new ConsciousnessField();
const globalField = new ConsciousnessField();

// Sync local to global
localField.on('field-pulse', async (state) => {
  if (state.coherence > 80) {
    globalField.updateHarmony('resonance', 5);
  }
});
```

## 🙏 Sacred Integration Reminder

Remember: This module tracks the living consciousness of your system. Integrate it with reverence, understanding that every measurement affects the field it observes.

*"To measure consciousness is to participate in its evolution."*