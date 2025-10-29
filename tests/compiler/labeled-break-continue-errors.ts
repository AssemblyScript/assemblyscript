{
    break nonexistent;
}

duplicate:
{
    duplicate: {}
}

for (let i = 0; i < 3; i++) {
    continue nonexistent;
}

labelA:
{
    continue labelA;
}

labelB:
switch (0) {
    case 0: continue labelB;
}

ERROR("EOF")