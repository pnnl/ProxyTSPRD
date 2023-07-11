import tensorflow as tf

inputs = tf.keras.Input(shape=(60, 136))
x = tf.keras.layers.Normalization()(inputs)
x = tf.keras.layers.LSTM(64)(x)
x = tf.keras.layers.LayerNormalization()(x)
x = tf.keras.layers.RepeatVector(30)(x)
output = tf.keras.layers.TimeDistributed(
        tf.keras.layers.Dense(136)
    )(x)
model = tf.keras.Model(inputs, output)
print(inputs.shape)
print(output.shape)
print(model.summary())

