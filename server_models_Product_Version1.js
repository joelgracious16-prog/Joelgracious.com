const mongoose = require('mongoose');

const productSchema = new mongoose.Schema({
  name: { type: String, required: true },
  brand: { type: String, default: 'Joel Gracious' },
  category: { type: String, required: true }, // e.g., jeans, tshirts, capes
  price: { type: Number, required: true },
  description: { type: String },
  imageUrl: { type: String },
  inStock: { type: Boolean, default: true }
}, { timestamps: true });

module.exports = mongoose.model('Product', productSchema);