.class public Ljcifs/ntlmssp/Type3Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type3Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_FLAGS:I = 0x0

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = null

.field private static final DEFAULT_USER:Ljava/lang/String; = null

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final LM_COMPATIBILITY:I = 0x0

.field static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private domain:Ljava/lang/String;

.field private lmResponse:[B

.field private masterKey:[B

.field private ntResponse:[B

.field private sessionKey:[B

.field private user:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sput-object v2, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    .line 75
    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_42

    :goto_11
    or-int/lit16 v1, v1, 0x200

    sput v1, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    .line 78
    const-string v1, "jcifs.smb.client.domain"

    invoke-static {v1, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 79
    const-string v1, "jcifs.smb.client.username"

    invoke-static {v1, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    .line 80
    const-string v1, "jcifs.smb.client.password"

    invoke-static {v1, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, defaultWorkstation:Ljava/lang/String;
    :try_start_2e
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_35
    .catch Ljava/net/UnknownHostException; {:try_start_2e .. :try_end_35} :catch_44

    move-result-object v0

    .line 86
    :goto_36
    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    .line 87
    const-string v1, "jcifs.smb.lmCompatibility"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    .line 88
    return-void

    .line 75
    .end local v0           #defaultWorkstation:Ljava/lang/String;
    :cond_42
    const/4 v1, 0x2

    goto :goto_11

    .line 85
    .restart local v0       #defaultWorkstation:Ljava/lang/String;
    :catch_44
    move-exception v1

    goto :goto_36
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 95
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 96
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(I[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "flags"
    .parameter "lmResponse"
    .parameter "ntResponse"
    .parameter "domain"
    .parameter "user"
    .parameter "workstation"

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 291
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 292
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 293
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 294
    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p6}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;)V
    .registers 8
    .parameter "type2"

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 71
    iput-object v5, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v5, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 108
    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 109
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, domain:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, user:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, password:Ljava/lang/String;
    sget v5, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    packed-switch v5, :pswitch_data_68

    .line 139
    invoke-static {p1, v3}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 140
    invoke-static {p1, v3}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 142
    :goto_3b
    return-void

    .line 118
    :pswitch_3c
    invoke-static {p1, v3}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 119
    invoke-static {p1, v3}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_3b

    .line 122
    :pswitch_4b
    invoke-static {p1, v3}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v2

    .line 123
    .local v2, nt:[B
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 124
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_3b

    .line 129
    .end local v2           #nt:[B
    :pswitch_56
    const/16 v5, 0x8

    new-array v0, v5, [B

    .line 130
    .local v0, clientChallenge:[B
    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    invoke-static {p1, v1, v4, v3, v0}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    goto :goto_3b

    .line 115
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3c
        :pswitch_4b
        :pswitch_56
        :pswitch_56
        :pswitch_56
    .end packed-switch
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 27
    .parameter "type2"
    .parameter "password"
    .parameter "domain"
    .parameter "user"
    .parameter "workstation"
    .parameter "flags"

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 71
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 156
    invoke-static/range {p1 .. p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v5

    or-int v5, v5, p6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 157
    if-nez p5, :cond_1e

    .line 158
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p5

    .line 159
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 163
    sget v5, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    packed-switch v5, :pswitch_data_1ce

    .line 273
    invoke-static/range {p1 .. p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 274
    invoke-static/range {p1 .. p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 276
    :cond_4a
    :goto_4a
    return-void

    .line 166
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v5

    const/high16 v6, 0x8

    and-int/2addr v5, v6

    if-nez v5, :cond_67

    .line 167
    invoke-static/range {p1 .. p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 168
    invoke-static/range {p1 .. p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_4a

    .line 172
    :cond_67
    const/16 v5, 0x18

    new-array v10, v5, [B

    .line 173
    .local v10, clientChallenge:[B
    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 174
    const/16 v5, 0x8

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static {v10, v5, v6, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 178
    invoke-static/range {p2 .. p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv1(Ljava/lang/String;)[B

    move-result-object v17

    .line 179
    .local v17, responseKeyNT:[B
    invoke-virtual/range {p1 .. p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v0, v5, v10}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLM2Response([B[B[B)[B

    move-result-object v15

    .line 183
    .local v15, ntlm2Response:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4a

    .line 187
    const/16 v5, 0x10

    new-array v0, v5, [B

    move-object/from16 v18, v0

    .line 188
    .local v18, sessionNonce:[B
    invoke-virtual/range {p1 .. p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x8

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object/from16 v0, v18

    invoke-static {v10, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    new-instance v13, Ljcifs/util/MD4;

    invoke-direct {v13}, Ljcifs/util/MD4;-><init>()V

    .line 192
    .local v13, md4:Ljcifs/util/MD4;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljcifs/util/MD4;->update([B)V

    .line 193
    invoke-virtual {v13}, Ljcifs/util/MD4;->digest()[B

    move-result-object v19

    .line 195
    .local v19, userSessionKey:[B
    new-instance v12, Ljcifs/util/HMACT64;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 196
    .local v12, hmac:Ljcifs/util/HMACT64;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljcifs/util/HMACT64;->update([B)V

    .line 197
    invoke-virtual {v12}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v16

    .line 199
    .local v16, ntlm2SessionKey:[B
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v5

    const/high16 v6, 0x4000

    and-int/2addr v5, v6

    if-eqz v5, :cond_10c

    .line 200
    const/16 v5, 0x10

    new-array v5, v5, [B

    move-object/from16 v0, p0

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 201
    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 203
    const/16 v5, 0x10

    new-array v8, v5, [B

    .line 204
    .local v8, exchangedKey:[B
    new-instance v4, Ljcifs/util/RC4;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljcifs/util/RC4;-><init>([B)V

    .line 205
    .local v4, rc4:Ljcifs/util/RC4;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Ljcifs/util/RC4;->update([BII[BI)V

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_4a

    .line 218
    .end local v4           #rc4:Ljcifs/util/RC4;
    .end local v8           #exchangedKey:[B
    :cond_10c
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 219
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_4a

    .line 225
    .end local v10           #clientChallenge:[B
    .end local v12           #hmac:Ljcifs/util/HMACT64;
    .end local v13           #md4:Ljcifs/util/MD4;
    .end local v15           #ntlm2Response:[B
    .end local v16           #ntlm2SessionKey:[B
    .end local v17           #responseKeyNT:[B
    .end local v18           #sessionNonce:[B
    .end local v19           #userSessionKey:[B
    :pswitch_11d
    invoke-static/range {p1 .. p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v14

    .line 226
    .local v14, nt:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 227
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_4a

    .line 232
    .end local v14           #nt:[B
    :pswitch_12d
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v17

    .line 234
    .restart local v17       #responseKeyNT:[B
    const/16 v5, 0x8

    new-array v10, v5, [B

    .line 235
    .restart local v10       #clientChallenge:[B
    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 236
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v10}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 238
    const/16 v5, 0x8

    new-array v11, v5, [B

    .line 239
    .local v11, clientChallenge2:[B
    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 240
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Ljcifs/ntlmssp/Type3Message;->getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4a

    .line 243
    new-instance v12, Ljcifs/util/HMACT64;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 244
    .restart local v12       #hmac:Ljcifs/util/HMACT64;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual {v12, v5, v6, v7}, Ljcifs/util/HMACT64;->update([BII)V

    .line 245
    invoke-virtual {v12}, Ljcifs/util/HMACT64;->digest()[B

    move-result-object v19

    .line 247
    .restart local v19       #userSessionKey:[B
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v5

    const/high16 v6, 0x4000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1bd

    .line 248
    const/16 v5, 0x10

    new-array v5, v5, [B

    move-object/from16 v0, p0

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 249
    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 251
    const/16 v5, 0x10

    new-array v8, v5, [B

    .line 252
    .restart local v8       #exchangedKey:[B
    new-instance v4, Ljcifs/util/RC4;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljcifs/util/RC4;-><init>([B)V

    .line 253
    .restart local v4       #rc4:Ljcifs/util/RC4;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Ljcifs/util/RC4;->update([BII[BI)V

    .line 264
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_4a

    .line 266
    .end local v4           #rc4:Ljcifs/util/RC4;
    .end local v8           #exchangedKey:[B
    :cond_1bd
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 267
    move-object/from16 v0, p0

    iget-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_4a

    .line 163
    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4b
        :pswitch_11d
        :pswitch_12d
        :pswitch_12d
        :pswitch_12d
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    .line 71
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 72
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 306
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type3Message;->parse([B)V

    .line 307
    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    .prologue
    .line 584
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    .prologue
    .line 509
    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I
    .registers 3
    .parameter "type2"

    .prologue
    .line 519
    if-nez p0, :cond_5

    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    .line 523
    :goto_4
    return v0

    .line 520
    :cond_5
    const/16 v0, 0x200

    .line 521
    .local v0, flags:I
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_10
    or-int/2addr v0, v1

    .line 523
    goto :goto_4

    .line 521
    :cond_12
    const/4 v1, 0x2

    goto :goto_10
.end method

.method public static getDefaultPassword()Ljava/lang/String;
    .registers 1

    .prologue
    .line 602
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultUser()Ljava/lang/String;
    .registers 1

    .prologue
    .line 593
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .registers 1

    .prologue
    .line 611
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method public static getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .registers 3
    .parameter "type2"
    .parameter "password"

    .prologue
    .line 535
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 536
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_5
.end method

.method public static getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 6
    .parameter "type2"
    .parameter "domain"
    .parameter "user"
    .parameter "password"
    .parameter "clientChallenge"

    .prologue
    .line 543
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-nez p4, :cond_c

    .line 545
    :cond_a
    const/4 v0, 0x0

    .line 547
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    invoke-static {p1, p2, p3, v0, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    goto :goto_b
.end method

.method public static getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B
    .registers 10
    .parameter "type2"
    .parameter "responseKeyNT"
    .parameter "clientChallenge"

    .prologue
    .line 553
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    .line 554
    :cond_6
    const/4 v0, 0x0

    .line 557
    :goto_7
    return-object v0

    .line 556
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v5, 0xa9730b66800L

    add-long/2addr v0, v5

    const-wide/16 v5, 0x2710

    mul-long v3, v0, v5

    .line 557
    .local v3, nanos1601:J
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMv2Response([B[B[BJ[B)[B

    move-result-object v0

    goto :goto_7
.end method

.method public static getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .registers 3
    .parameter "type2"
    .parameter "password"

    .prologue
    .line 573
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 574
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_5
.end method

.method private parse([B)V
    .registers 19
    .parameter "material"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/16 v15, 0x8

    if-ge v6, v15, :cond_1a

    .line 616
    aget-byte v15, p1, v6

    sget-object v16, Ljcifs/ntlmssp/Type3Message;->NTLMSSP_SIGNATURE:[B

    aget-byte v16, v16, v6

    move/from16 v0, v16

    if-eq v15, v0, :cond_17

    .line 617
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Not an NTLMSSP message."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 615
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 620
    :cond_1a
    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_30

    .line 621
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Not a Type 3 message."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 623
    :cond_30
    const/16 v15, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v7

    .line 624
    .local v7, lmResponse:[B
    const/16 v15, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v8

    .line 625
    .local v8, lmResponseOffset:I
    const/16 v15, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v9

    .line 626
    .local v9, ntResponse:[B
    const/16 v15, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v10

    .line 627
    .local v10, ntResponseOffset:I
    const/16 v15, 0x1c

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v3

    .line 628
    .local v3, domain:[B
    const/16 v15, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v4

    .line 629
    .local v4, domainOffset:I
    const/16 v15, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v11

    .line 630
    .local v11, user:[B
    const/16 v15, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v12

    .line 631
    .local v12, userOffset:I
    const/16 v15, 0x2c

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v13

    .line 632
    .local v13, workstation:[B
    const/16 v15, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v14

    .line 635
    .local v14, workstationOffset:I
    const/4 v1, 0x0

    .line 636
    .local v1, _sessionKey:[B
    const/16 v15, 0x34

    if-eq v8, v15, :cond_95

    const/16 v15, 0x34

    if-eq v10, v15, :cond_95

    const/16 v15, 0x34

    if-eq v4, v15, :cond_95

    const/16 v15, 0x34

    if-eq v12, v15, :cond_95

    const/16 v15, 0x34

    if-ne v14, v15, :cond_ce

    .line 639
    :cond_95
    const/16 v5, 0x202

    .line 640
    .local v5, flags:I
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, charset:Ljava/lang/String;
    :goto_9b
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    .line 648
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljcifs/ntlmssp/Type3Message;->setFlags(I)V

    .line 649
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 650
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 651
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 652
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v11, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 653
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 654
    return-void

    .line 642
    .end local v2           #charset:Ljava/lang/String;
    .end local v5           #flags:I
    :cond_ce
    const/16 v15, 0x34

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readSecurityBuffer([BI)[B

    move-result-object v1

    .line 643
    const/16 v15, 0x3c

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljcifs/ntlmssp/Type3Message;->readULong([BI)I

    move-result v5

    .line 644
    .restart local v5       #flags:I
    and-int/lit8 v15, v5, 0x1

    if-eqz v15, :cond_e5

    const-string v2, "UTF-16LE"

    .restart local v2       #charset:Ljava/lang/String;
    :goto_e4
    goto :goto_9b

    .end local v2           #charset:Ljava/lang/String;
    :cond_e5
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v2

    goto :goto_e4
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLMResponse()[B
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-object v0
.end method

.method public getMasterKey()[B
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    return-object v0
.end method

.method public getNTResponse()[B
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-object v0
.end method

.method public getSessionKey()[B
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 2
    .parameter "domain"

    .prologue
    .line 360
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setLMResponse([B)V
    .registers 2
    .parameter "lmResponse"

    .prologue
    .line 324
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    .line 325
    return-void
.end method

.method public setNTResponse([B)V
    .registers 2
    .parameter "ntResponse"

    .prologue
    .line 342
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    .line 343
    return-void
.end method

.method public setSessionKey([B)V
    .registers 2
    .parameter "sessionKey"

    .prologue
    .line 424
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 425
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2
    .parameter "user"

    .prologue
    .line 378
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setWorkstation(Ljava/lang/String;)V
    .registers 2
    .parameter "workstation"

    .prologue
    .line 396
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public toByteArray()[B
    .registers 31

    .prologue
    .line 429
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v9

    .line 430
    .local v9, flags:I
    and-int/lit8 v26, v9, 0x1

    if-eqz v26, :cond_10e

    const/16 v19, 0x1

    .line 431
    .local v19, unicode:Z
    :goto_a
    if-eqz v19, :cond_112

    const/4 v15, 0x0

    .line 432
    .local v15, oem:Ljava/lang/String;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v7

    .line 433
    .local v7, domainName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 434
    .local v5, domain:[B
    if-eqz v7, :cond_24

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_24

    .line 435
    if-eqz v19, :cond_118

    const-string v26, "UTF-16LE"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 439
    :cond_24
    :goto_24
    if-eqz v5, :cond_11e

    array-length v6, v5

    .line 440
    .local v6, domainLength:I
    :goto_27
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v22

    .line 441
    .local v22, userName:Ljava/lang/String;
    const/16 v20, 0x0

    .line 442
    .local v20, user:[B
    if-eqz v22, :cond_41

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_41

    .line 443
    if-eqz v19, :cond_121

    const-string v26, "UTF-16LE"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    .line 446
    :cond_41
    :goto_41
    if-eqz v20, :cond_12d

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    .line 447
    .local v21, userLength:I
    :goto_48
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v25

    .line 448
    .local v25, workstationName:Ljava/lang/String;
    const/16 v23, 0x0

    .line 449
    .local v23, workstation:[B
    if-eqz v25, :cond_5e

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_5e

    .line 450
    if-eqz v19, :cond_131

    const-string v26, "UTF-16LE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    .line 454
    :cond_5e
    :goto_5e
    if-eqz v23, :cond_13d

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    .line 456
    .local v24, workstationLength:I
    :goto_65
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v12

    .line 457
    .local v12, lmResponse:[B
    if-eqz v12, :cond_141

    array-length v11, v12

    .line 458
    .local v11, lmLength:I
    :goto_6c
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v14

    .line 459
    .local v14, ntResponse:[B
    if-eqz v14, :cond_144

    array-length v13, v14

    .line 460
    .local v13, ntLength:I
    :goto_73
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v17

    .line 461
    .local v17, sessionKey:[B
    if-eqz v17, :cond_147

    move-object/from16 v0, v17

    array-length v10, v0

    .line 462
    .local v10, keyLength:I
    :goto_7c
    add-int/lit8 v26, v6, 0x40

    add-int v26, v26, v21

    add-int v26, v26, v24

    add-int v26, v26, v11

    add-int v26, v26, v13

    add-int v26, v26, v10

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 464
    .local v18, type3:[B
    sget-object v26, Ljcifs/ntlmssp/Type3Message;->NTLMSSP_SIGNATURE:[B

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v18

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    const/16 v26, 0x8

    const/16 v27, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Ljcifs/ntlmssp/Type3Message;->writeULong([BII)V

    .line 466
    const/16 v16, 0x40

    .line 467
    .local v16, offset:I
    const/16 v26, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v12}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    .line 468
    add-int v16, v16, v11

    .line 469
    const/16 v26, 0x14

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v14}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    .line 470
    add-int v16, v16, v13

    .line 471
    const/16 v26, 0x1c

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v5}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    .line 472
    add-int v16, v16, v6

    .line 473
    const/16 v26, 0x24

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v16

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    .line 474
    add-int v16, v16, v21

    .line 475
    const/16 v26, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v16

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    .line 476
    add-int v16, v16, v24

    .line 477
    const/16 v26, 0x34

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->writeSecurityBuffer([BII[B)V

    .line 478
    const/16 v26, 0x3c

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-static {v0, v1, v9}, Ljcifs/ntlmssp/Type3Message;->writeULong([BII)V

    .line 479
    return-object v18

    .line 430
    .end local v5           #domain:[B
    .end local v6           #domainLength:I
    .end local v7           #domainName:Ljava/lang/String;
    .end local v10           #keyLength:I
    .end local v11           #lmLength:I
    .end local v12           #lmResponse:[B
    .end local v13           #ntLength:I
    .end local v14           #ntResponse:[B
    .end local v15           #oem:Ljava/lang/String;
    .end local v16           #offset:I
    .end local v17           #sessionKey:[B
    .end local v18           #type3:[B
    .end local v19           #unicode:Z
    .end local v20           #user:[B
    .end local v21           #userLength:I
    .end local v22           #userName:Ljava/lang/String;
    .end local v23           #workstation:[B
    .end local v24           #workstationLength:I
    .end local v25           #workstationName:Ljava/lang/String;
    :cond_10e
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 431
    .restart local v19       #unicode:Z
    :cond_112
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getOEMEncoding()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_d

    .line 435
    .restart local v5       #domain:[B
    .restart local v7       #domainName:Ljava/lang/String;
    .restart local v15       #oem:Ljava/lang/String;
    :cond_118
    invoke-virtual {v7, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto/16 :goto_24

    .line 439
    :cond_11e
    const/4 v6, 0x0

    goto/16 :goto_27

    .line 443
    .restart local v6       #domainLength:I
    .restart local v20       #user:[B
    .restart local v22       #userName:Ljava/lang/String;
    :cond_121
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    goto/16 :goto_41

    .line 446
    :cond_12d
    const/16 v21, 0x0

    goto/16 :goto_48

    .line 450
    .restart local v21       #userLength:I
    .restart local v23       #workstation:[B
    .restart local v25       #workstationName:Ljava/lang/String;
    :cond_131
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13a} :catch_14a

    move-result-object v23

    goto/16 :goto_5e

    .line 454
    :cond_13d
    const/16 v24, 0x0

    goto/16 :goto_65

    .line 457
    .restart local v12       #lmResponse:[B
    .restart local v24       #workstationLength:I
    :cond_141
    const/4 v11, 0x0

    goto/16 :goto_6c

    .line 459
    .restart local v11       #lmLength:I
    .restart local v14       #ntResponse:[B
    :cond_144
    const/4 v13, 0x0

    goto/16 :goto_73

    .line 461
    .restart local v13       #ntLength:I
    .restart local v17       #sessionKey:[B
    :cond_147
    const/4 v10, 0x0

    goto/16 :goto_7c

    .line 480
    .end local v5           #domain:[B
    .end local v6           #domainLength:I
    .end local v7           #domainName:Ljava/lang/String;
    .end local v9           #flags:I
    .end local v11           #lmLength:I
    .end local v12           #lmResponse:[B
    .end local v13           #ntLength:I
    .end local v14           #ntResponse:[B
    .end local v15           #oem:Ljava/lang/String;
    .end local v17           #sessionKey:[B
    .end local v19           #unicode:Z
    .end local v20           #user:[B
    .end local v21           #userLength:I
    .end local v22           #userName:Ljava/lang/String;
    .end local v23           #workstation:[B
    .end local v24           #workstationLength:I
    .end local v25           #workstationName:Ljava/lang/String;
    :catch_14a
    move-exception v8

    .line 481
    .local v8, ex:Ljava/io/IOException;
    new-instance v26, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 486
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, user:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, domain:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, workstation:Ljava/lang/String;
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v1

    .line 490
    .local v1, lmResponse:[B
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v2

    .line 491
    .local v2, ntResponse:[B
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v3

    .line 493
    .local v3, sessionKey:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type3Message[domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",workstation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",lmResponse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_84

    const-string v6, "null"

    :goto_45
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",ntResponse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_9f

    const-string v6, "null"

    :goto_53
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",sessionKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_ba

    const-string v6, "null"

    :goto_61
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",flags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getFlags()I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bytes>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_45

    :cond_9f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bytes>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_53

    :cond_ba
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bytes>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_61
.end method