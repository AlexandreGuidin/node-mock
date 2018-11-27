export const randomId = () => {
    return Math.round(Math.random() * 1000000)
};

export const randomBoolean = () => {
    return Math.random() >= 0.5;
};