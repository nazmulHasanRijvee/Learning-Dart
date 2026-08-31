String getCaffeine(type) {
  const caffeine = {
    'coffee': 'Here is your coffee',
    'tea': 'Here is your tea',
    'soda': 'Here is your soda',
    'energy drink': 'Here is your energy drink',
  };
  return caffeine[type.toLowerCase()] ?? 'Caffeine content not found';
}
