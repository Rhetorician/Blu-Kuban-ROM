.class Landroid/webkit/LoadListener;
.super Landroid/os/Handler;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_AUTH:I = 0x191

.field private static final HTTP_FOUND:I = 0x12e

.field private static final HTTP_MOVED_PERMANENTLY:I = 0x12d

.field private static final HTTP_NOT_FOUND:I = 0x194

.field private static final HTTP_NOT_MODIFIED:I = 0x130

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_PROXY_AUTH:I = 0x197

.field private static final HTTP_SEE_OTHER:I = 0x12f

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MSG_CONTENT_DATA:I = 0x6e

.field private static final MSG_CONTENT_ERROR:I = 0x82

.field private static final MSG_CONTENT_FINISHED:I = 0x78

.field private static final MSG_CONTENT_HEADERS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x8c

.field private static final MSG_LOCATION_CHANGED_REQUEST:I = 0x96

.field private static final MSG_SSL_CERTIFICATE:I = 0xaa

.field private static final MSG_SSL_ERROR:I = 0xb4

.field private static final MSG_STATUS:I = 0xa0

.field private static final XML_MIME_TYPE:Ljava/lang/String; = "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

.field private static sNativeLoaderCount:I


# instance fields
.field private clientErrorMsg:[Ljava/lang/String;

.field private mAuthFailed:Z

.field private mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mCacheLoader:Landroid/webkit/CacheLoader;

.field private mCacheRedirectCount:I

.field private mCancelled:Z

.field public mContentLength:J

.field private mContext:Landroid/content/Context;

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mEncoding:Ljava/lang/String;

.field private mErrorDescription:Ljava/lang/String;

.field private mErrorID:I

.field private mFromCache:Z

.field private mHeaders:Landroid/net/http/Headers;

.field private mIsMainPageLoader:Z

.field private final mIsMainResourceLoader:Z

.field private mMessageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mNativeLoader:I

.field private mOriginalUrl:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanent:Z

.field private mPostData:[B

.field private mPostIdentifier:J

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetNativeResponse:Z

.field private mSslError:Landroid/net/http/SslError;

.field private mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mStatusText:Ljava/lang/String;

.field private mSynchronous:Z

.field private mTransferEncoding:Ljava/lang/String;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;

.field private final mUserGesture:Z

.field private final mUsername:Ljava/lang/String;

.field private serverErrorMsg:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    .line 1457
    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 53
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 187
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bad Request"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Unauthorized"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Rayment Required"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Forbidden"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Not Found"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Method Not Allowed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Not Acceptable"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Proxy Authentication Required"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Request Timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Conflict"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Gone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Length Required"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Precondition Failed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Request entity too large"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Request-URI too long"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Unsupported media type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Request Range Not Satisfied"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Expectation Failed"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/LoadListener;->clientErrorMsg:[Ljava/lang/String;

    .line 207
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Internal Server Error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Not Implemented"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Bad Gateway"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Service Unavailable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Gateway Timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HTTP Version Not Supported"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/LoadListener;->serverErrorMsg:[Ljava/lang/String;

    .line 155
    sget-boolean v0, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    if-nez v0, :cond_ad

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_ad

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_ad
    iput-object p1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 162
    invoke-virtual {p0, p3}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 163
    iput p4, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 164
    iput-boolean p5, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    .line 165
    if-eqz p5, :cond_c1

    .line 166
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    .line 168
    :cond_c1
    iput-boolean p6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    .line 169
    iput-boolean p7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    .line 170
    iput-boolean p8, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    .line 171
    iput-wide p9, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    .line 172
    iput-object p11, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    .line 173
    iput-object p12, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    .line 174
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearNativeLoader()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 182
    iput v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 183
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    .line 184
    return-void
.end method

.method private commitHeaders()V
    .registers 2

    .prologue
    .line 1117
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1132
    :cond_c
    :goto_c
    return-void

    .line 1127
    :cond_d
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_c

    .line 1131
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    goto :goto_c
.end method

.method private commitHeadersCheckRedirect()V
    .registers 3

    .prologue
    .line 1099
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 1113
    :cond_4
    :goto_4
    return-void

    .line 1107
    :cond_5
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_11

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_4

    :cond_11
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-nez v0, :cond_4

    .line 1112
    :cond_21
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    goto :goto_4
.end method

.method private commitLoad()V
    .registers 10

    .prologue
    .line 1172
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v5, :cond_5

    .line 1224
    :goto_4
    return-void

    .line 1173
    :cond_5
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v5, :cond_c

    .line 1174
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1177
    :cond_c
    iget-boolean v5, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v5, :cond_6f

    .line 1178
    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1179
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_6f

    .line 1182
    iget-object v6, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v6

    .line 1186
    :try_start_1b
    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v5

    new-array v1, v5, [B

    .line 1187
    .local v1, cert:[B
    const/4 v3, 0x0

    .line 1189
    .local v3, offset:I
    :goto_24
    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1190
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_3b

    .line 1198
    iget-object v5, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 1199
    iget-object v5, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1200
    monitor-exit v6

    goto :goto_4

    .line 1201
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v3           #offset:I
    :catchall_38
    move-exception v5

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_38

    throw v5

    .line 1192
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v3       #offset:I
    :cond_3b
    :try_start_3b
    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v5, :cond_4a

    .line 1193
    iget-object v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v7, 0x0

    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v5, v7, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1194
    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v3, v5

    .line 1196
    :cond_4a
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_38

    goto :goto_24

    .line 1213
    .end local v1           #cert:[B
    .end local v3           #offset:I
    .end local v4           #type:Ljava/lang/String;
    :cond_4e
    iget v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v5, :cond_78

    .line 1214
    iget-object v5, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v5, v6}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1215
    new-instance v2, Landroid/webkit/WebViewWorker$CacheData;

    invoke-direct {v2}, Landroid/webkit/WebViewWorker$CacheData;-><init>()V

    .line 1216
    .local v2, data:Landroid/webkit/WebViewWorker$CacheData;
    iput-object p0, v2, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    .line 1217
    iput-object v0, v2, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 1218
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1210
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v2           #data:Landroid/webkit/WebViewWorker$CacheData;
    :cond_6f
    :goto_6f
    iget-object v5, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v5}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1211
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_4e

    goto :goto_4

    .line 1221
    :cond_78
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_6f
.end method

.method private createNativeResponse()I
    .registers 10

    .prologue
    .line 1151
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v0, :cond_2c

    const/16 v2, 0xc8

    .line 1154
    .local v2, statusCode:I
    :goto_c
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->originalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    iget-object v7, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v8

    .line 1157
    .local v8, nativeResponse:I
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_2b

    .line 1158
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    new-instance v1, Landroid/webkit/LoadListener$1;

    invoke-direct {v1, p0, v8}, Landroid/webkit/LoadListener$1;-><init>(Landroid/webkit/LoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    .line 1164
    :cond_2b
    return v8

    .line 1151
    .end local v2           #statusCode:I
    .end local v8           #nativeResponse:I
    :cond_2c
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    goto :goto_c
.end method

.method private doRedirect()V
    .registers 14

    .prologue
    const v12, 0x1040007

    const/16 v11, -0xc

    .line 1330
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_a

    .line 1451
    :cond_9
    :goto_9
    return-void

    .line 1336
    :cond_a
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1f

    .line 1337
    const/16 v7, -0x9

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x104014a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_9

    .line 1342
    :cond_1f
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v7}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1343
    .local v5, redirectTo:Ljava/lang/String;
    if-eqz v5, :cond_14b

    .line 1344
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v3

    .line 1345
    .local v3, nativeResponse:I
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v3}, Landroid/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1349
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v7, :cond_9

    .line 1352
    if-nez v5, :cond_5a

    .line 1353
    const-string/jumbo v7, "webkit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Redirection failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v9}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    goto :goto_9

    .line 1357
    :cond_5a
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9a

    .line 1358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040420

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1361
    .local v6, text:Ljava/lang/String;
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v7, :cond_87

    .line 1362
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1364
    :cond_87
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1365
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1366
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto/16 :goto_9

    .line 1372
    .end local v6           #text:Ljava/lang/String;
    :cond_9a
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v7

    if-nez v7, :cond_fa

    .line 1373
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1374
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1375
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1376
    iget-wide v7, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1377
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v7, v8, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1385
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_bc
    iput-object v5, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1387
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 1390
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-nez v7, :cond_cc

    .line 1391
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1393
    :cond_cc
    const/4 v2, 0x0

    .line 1394
    .local v2, fromCache:Z
    iget-object v7, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v7, :cond_d8

    .line 1397
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    .line 1398
    const/4 v2, 0x1

    .line 1400
    :cond_d8
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_13d

    .line 1403
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_11e

    .line 1405
    :try_start_e4
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_ef
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_ef} :catch_108

    .line 1429
    :cond_ef
    if-eqz v2, :cond_9

    .line 1433
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget v8, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    invoke-virtual {v7, v8}, Landroid/net/http/RequestHandle;->setRedirectCount(I)V

    goto/16 :goto_9

    .line 1380
    .end local v2           #fromCache:Z
    :cond_fa
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_bc

    .line 1407
    .restart local v2       #fromCache:Z
    :catch_108
    move-exception v1

    .line 1408
    .local v1, e:Ljava/lang/RuntimeException;
    const-string/jumbo v7, "webkit"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1419
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_11e
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v4

    .line 1420
    .local v4, network:Landroid/webkit/Network;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iget-object v9, p0, Landroid/webkit/LoadListener;->mPostData:[B

    invoke-virtual {v4, v7, v8, v9, p0}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z

    move-result v7

    if-nez v7, :cond_ef

    .line 1424
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1435
    .end local v4           #network:Landroid/webkit/Network;
    :cond_13d
    if-nez v2, :cond_9

    .line 1439
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v7}, Landroid/net/http/RequestHandle;->getRedirectCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    goto/16 :goto_9

    .line 1442
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_14b
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    .line 1443
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1444
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto/16 :goto_9
.end method

.method private getErrorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorID()I
    .registers 2

    .prologue
    .line 1257
    iget v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    return v0
.end method

.method public static getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .registers 25
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 141
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 142
    new-instance v0, Landroid/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/webkit/LoadListener;-><init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .registers 1

    .prologue
    .line 148
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    return v0
.end method

.method private guessMimeType()V
    .registers 5

    .prologue
    .line 1631
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1632
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1633
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v3, 0x1040007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1634
    .local v1, text:Ljava/lang/String;
    const/16 v2, -0xc

    invoke-direct {p0, v2, v1}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .line 1645
    .end local v1           #text:Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 1639
    :cond_22
    const-string/jumbo v2, "text/html"

    iput-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1640
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    .local v0, newMimeType:Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1642
    iput-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_21
.end method

.method private guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 1656
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 585
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v0, :cond_d

    .line 587
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->certificate(Landroid/net/http/SslCertificate;)V

    .line 589
    :cond_d
    return-void
.end method

.method private handleEndData()V
    .registers 7

    .prologue
    const/16 v5, 0x96

    const/16 v3, 0x8c

    const/4 v4, 0x1

    .line 662
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v1, :cond_a

    .line 760
    :goto_9
    return-void

    .line 664
    :cond_a
    iget v1, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    sparse-switch v1, :sswitch_data_e0

    .line 758
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 759
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_9

    .line 667
    :sswitch_16
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    .line 677
    :sswitch_18
    iget v1, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v2, 0x133

    if-ne v1, v2, :cond_56

    .line 678
    iget-object v1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v1}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 680
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 682
    :cond_38
    iget-object v1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 683
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 686
    :cond_4e
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 689
    :cond_56
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 703
    :sswitch_5e
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    if-nez v1, :cond_f

    .line 708
    :cond_76
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v1, :cond_b1

    iget-object v1, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_b1

    iget-object v1, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_b1

    .line 709
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_aa

    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, host:Ljava/lang/String;
    :goto_94
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/webkit/HttpAuthHandlerImpl;->onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 709
    .end local v0           #host:Ljava/lang/String;
    :cond_aa
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    .line 716
    :cond_b1
    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/Network;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    goto/16 :goto_9

    .line 731
    :sswitch_bc
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v1, :cond_f

    .line 732
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 733
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    .line 740
    :goto_cb
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    goto/16 :goto_9

    .line 736
    :cond_cf
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_cb

    .line 664
    nop

    :sswitch_data_e0
    .sparse-switch
        0x12d -> :sswitch_16
        0x12e -> :sswitch_18
        0x12f -> :sswitch_18
        0x130 -> :sswitch_bc
        0x133 -> :sswitch_18
        0x191 -> :sswitch_5e
        0x197 -> :sswitch_5e
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .registers 3
    .parameter "id"
    .parameter "description"

    .prologue
    .line 609
    iput p1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 610
    iput-object p2, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    .line 611
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 612
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->notifyError()V

    .line 613
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 614
    return-void
.end method

.method private handleHeaders(Landroid/net/http/Headers;)V
    .registers 16
    .parameter "headers"

    .prologue
    .line 377
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v10, :cond_5

    .line 514
    :goto_4
    return-void

    .line 382
    :cond_5
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0xce

    if-ne v10, v11, :cond_19

    .line 384
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x6b

    invoke-virtual {v10, v11, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 389
    :cond_19
    iput-object p1, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    .line 391
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v1

    .line 392
    .local v1, contentLength:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_187

    .line 393
    iput-wide v1, p0, Landroid/webkit/LoadListener;->mContentLength:J

    .line 398
    :goto_27
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, contentType:Ljava/lang/String;
    if-eqz v3, :cond_18d

    .line 400
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-object v12, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/webkit/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 412
    :goto_42
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v10, :cond_a1

    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v10, :cond_a1

    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    if-eqz v10, :cond_a1

    const-string v10, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a1

    iget-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string v11, "application/xhtml+xml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a1

    .line 415
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v5, i:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x1

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 419
    .local v6, info:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_a1

    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a1

    .line 424
    :try_start_94
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    iget-object v10, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v10}, Landroid/webkit/BrowserFrame;->stopLoading()V
    :try_end_9e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_94 .. :try_end_9e} :catch_a0

    goto/16 :goto_4

    .line 427
    :catch_a0
    move-exception v10

    .line 434
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    :cond_a1
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x191

    if-eq v10, v11, :cond_ad

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x197

    if-ne v10, v11, :cond_192

    :cond_ad
    const/4 v8, 0x1

    .line 437
    .local v8, mustAuthenticate:Z
    :goto_ae
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x197

    if-ne v10, v11, :cond_195

    const/4 v7, 0x1

    .line 440
    .local v7, isProxyAuthRequest:Z
    :goto_b5
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 443
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v10, :cond_f5

    .line 446
    if-eqz v8, :cond_198

    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v10

    if-ne v7, v10, :cond_198

    const/4 v10, 0x1

    :goto_c7
    iput-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 451
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v10, :cond_f5

    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_f5

    .line 452
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v9

    .line 454
    .local v9, network:Landroid/webkit/Network;
    invoke-virtual {v9}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v10

    if-eqz v10, :cond_f5

    .line 457
    monitor-enter v9

    .line 460
    :try_start_e2
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->getUsername()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/Network;->setProxyUsername(Ljava/lang/String;)V

    .line 461
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/Network;->setProxyPassword(Ljava/lang/String;)V

    .line 462
    monitor-exit v9
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_19b

    .line 469
    .end local v9           #network:Landroid/webkit/Network;
    :cond_f5
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 470
    if-eqz v8, :cond_10a

    .line 471
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x191

    if-ne v10, v11, :cond_19e

    .line 472
    invoke-virtual {p1}, Landroid/net/http/Headers;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 486
    :cond_10a
    :goto_10a
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_122

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x12e

    if-eq v10, v11, :cond_122

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x12d

    if-eq v10, v11, :cond_122

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x133

    if-ne v10, v11, :cond_182

    :cond_122
    iget v10, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v10, :cond_182

    .line 494
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    if-nez v10, :cond_16a

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v10, :cond_16a

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v10}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_144

    iget-wide v10, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_16a

    .line 497
    :cond_144
    new-instance v4, Landroid/webkit/WebViewWorker$CacheCreateData;

    invoke-direct {v4}, Landroid/webkit/WebViewWorker$CacheCreateData;-><init>()V

    .line 498
    .local v4, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    iput-object p0, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    .line 499
    iget-object v10, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    .line 500
    iget-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iput-object v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    .line 501
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iput v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    .line 502
    iget-wide v10, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    .line 503
    iput-object p1, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    .line 504
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x67

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 507
    .end local v4           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :cond_16a
    new-instance v0, Landroid/webkit/WebViewWorker$CacheEncoding;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheEncoding;-><init>()V

    .line 508
    .local v0, ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    iget-object v10, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    iput-object v10, v0, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    .line 509
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    .line 510
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x68

    invoke-virtual {v10, v11, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 513
    .end local v0           #ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    :cond_182
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeadersCheckRedirect()V

    goto/16 :goto_4

    .line 395
    .end local v3           #contentType:Ljava/lang/String;
    .end local v7           #isProxyAuthRequest:Z
    .end local v8           #mustAuthenticate:Z
    :cond_187
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/webkit/LoadListener;->mContentLength:J

    goto/16 :goto_27

    .line 409
    .restart local v3       #contentType:Ljava/lang/String;
    :cond_18d
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto/16 :goto_42

    .line 434
    :cond_192
    const/4 v8, 0x0

    goto/16 :goto_ae

    .line 437
    .restart local v8       #mustAuthenticate:Z
    :cond_195
    const/4 v7, 0x0

    goto/16 :goto_b5

    .line 446
    .restart local v7       #isProxyAuthRequest:Z
    :cond_198
    const/4 v10, 0x0

    goto/16 :goto_c7

    .line 462
    .restart local v9       #network:Landroid/webkit/Network;
    :catchall_19b
    move-exception v10

    :try_start_19c
    monitor-exit v9
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_19b

    throw v10

    .line 475
    .end local v9           #network:Landroid/webkit/Network;
    :cond_19e
    invoke-virtual {p1}, Landroid/net/http/Headers;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 478
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v10, :cond_10a

    .line 480
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->setProxy()V

    goto/16 :goto_10a
.end method

.method private handleSslError(Landroid/net/http/SslError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 856
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_13

    .line 857
    iput-object p1, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    .line 858
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/Network;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 862
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 863
    return-void

    .line 859
    :cond_13
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_f

    .line 860
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_f
.end method

.method private handleStatus(IIILjava/lang/String;)V
    .registers 6
    .parameter "major"
    .parameter "minor"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 557
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 562
    :goto_4
    return-void

    .line 559
    :cond_5
    iput p3, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    .line 560
    iput-object p4, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    goto :goto_4
.end method

.method private ignoreCallbacks()Z
    .registers 3

    .prologue
    .line 1599
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;
    .registers 20
    .parameter "header"

    .prologue
    .line 1521
    if-eqz p1, :cond_ca

    .line 1522
    const/16 v14, 0x100

    .line 1523
    .local v14, posMax:I
    const/4 v12, 0x0

    .line 1524
    .local v12, posLen:I
    new-array v11, v14, [I

    .line 1526
    .local v11, pos:[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1527
    .local v10, headerLen:I
    if-lez v10, :cond_59

    .line 1529
    const/4 v15, 0x0

    .line 1530
    .local v15, quoted:Z
    const/4 v3, 0x0

    .local v3, i:I
    move v13, v12

    .end local v12           #posLen:I
    .local v13, posLen:I
    :goto_10
    if-ge v3, v10, :cond_58

    if-ge v13, v14, :cond_58

    .line 1531
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_28

    .line 1532
    if-nez v15, :cond_26

    const/4 v15, 0x1

    :goto_21
    move v12, v13

    .line 1530
    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    :goto_22
    add-int/lit8 v3, v3, 0x1

    move v13, v12

    .end local v12           #posLen:I
    .restart local v13       #posLen:I
    goto :goto_10

    .line 1532
    :cond_26
    const/4 v15, 0x0

    goto :goto_21

    .line 1534
    :cond_28
    if-nez v15, :cond_cd

    .line 1535
    const/4 v2, 0x1

    const-string v4, "Basic"

    const/4 v5, 0x0

    const-string v1, "Basic"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1538
    add-int/lit8 v12, v13, 0x1

    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    aput v3, v11, v13

    goto :goto_22

    .line 1542
    .end local v12           #posLen:I
    .restart local v13       #posLen:I
    :cond_41
    const/4 v2, 0x1

    const-string v4, "Digest"

    const/4 v5, 0x0

    const-string v1, "Digest"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 1545
    add-int/lit8 v12, v13, 0x1

    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    aput v3, v11, v13

    goto :goto_22

    .end local v12           #posLen:I
    .restart local v13       #posLen:I
    :cond_58
    move v12, v13

    .line 1553
    .end local v3           #i:I
    .end local v13           #posLen:I
    .end local v15           #quoted:Z
    .restart local v12       #posLen:I
    :cond_59
    if-lez v12, :cond_ca

    .line 1555
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5c
    if-ge v3, v12, :cond_93

    .line 1556
    const/4 v5, 0x1

    aget v6, v11, v3

    const-string v7, "Digest"

    const/4 v8, 0x0

    const-string v1, "Digest"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1559
    aget v2, v11, v3

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v12, :cond_8e

    add-int/lit8 v1, v3, 0x1

    aget v1, v11, v1

    :goto_7c
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1562
    .local v17, sub:Ljava/lang/String;
    new-instance v16, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v16 .. v17}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v16, rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v16 .. v16}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1588
    .end local v3           #i:I
    .end local v10           #headerLen:I
    .end local v11           #pos:[I
    .end local v12           #posLen:I
    .end local v14           #posMax:I
    .end local v16           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v17           #sub:Ljava/lang/String;
    :cond_8d
    :goto_8d
    return-object v16

    .restart local v3       #i:I
    .restart local v10       #headerLen:I
    .restart local v11       #pos:[I
    .restart local v12       #posLen:I
    .restart local v14       #posMax:I
    :cond_8e
    move v1, v10

    .line 1559
    goto :goto_7c

    .line 1555
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 1571
    :cond_93
    const/4 v3, 0x0

    :goto_94
    if-ge v3, v12, :cond_ca

    .line 1572
    const/4 v5, 0x1

    aget v6, v11, v3

    const-string v7, "Basic"

    const/4 v8, 0x0

    const-string v1, "Basic"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1575
    aget v2, v11, v3

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v12, :cond_c8

    add-int/lit8 v1, v3, 0x1

    aget v1, v11, v1

    :goto_b4
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1578
    .restart local v17       #sub:Ljava/lang/String;
    new-instance v16, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v16 .. v17}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1579
    .restart local v16       #rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v16 .. v16}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 1571
    .end local v16           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v17           #sub:Ljava/lang/String;
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    :cond_c8
    move v1, v10

    .line 1575
    goto :goto_b4

    .line 1588
    .end local v3           #i:I
    .end local v10           #headerLen:I
    .end local v11           #pos:[I
    .end local v12           #posLen:I
    .end local v14           #posMax:I
    :cond_ca
    const/16 v16, 0x0

    goto :goto_8d

    .restart local v3       #i:I
    .restart local v10       #headerLen:I
    .restart local v11       #pos:[I
    .restart local v13       #posLen:I
    .restart local v14       #posMax:I
    .restart local v15       #quoted:Z
    :cond_cd
    move v12, v13

    .end local v13           #posLen:I
    .restart local v12       #posLen:I
    goto/16 :goto_22
.end method

.method private sendMessageInternal(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1665
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz v0, :cond_a

    .line 1666
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1670
    :goto_9
    return-void

    .line 1668
    :cond_a
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method private setNativeResponse()V
    .registers 3

    .prologue
    .line 1135
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v0

    .line 1137
    .local v0, nativeResponse:I
    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->nativeReceivedResponse(I)V

    .line 1138
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    .line 1139
    return-void
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .registers 5
    .parameter "url"
    .parameter "identifier"

    .prologue
    .line 1058
    sget-boolean v1, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1059
    :cond_10
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    .line 1065
    .local v0, inCache:Z
    :goto_18
    return v0

    .line 1059
    .end local v0           #inCache:Z
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method attachRequestHandle(Landroid/net/http/RequestHandle;)V
    .registers 2
    .parameter "requestHandle"

    .prologue
    .line 1016
    iput-object p1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1017
    return-void
.end method

.method authCredentialsInvalid()Z
    .registers 2

    .prologue
    .line 883
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isDigest()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getStale()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 1305
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_c

    .line 1306
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1310
    :cond_c
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1312
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1314
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1315
    return-void
.end method

.method public cancelled()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return v0
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 579
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 580
    return-void
.end method

.method checkCache(Ljava/util/Map;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 777
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    invoke-static {v3, v4, v5, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 782
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 784
    iput-boolean v2, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 786
    if-eqz v0, :cond_48

    .line 791
    new-instance v3, Landroid/webkit/CacheLoader;

    invoke-direct {v3, p0, v0}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    iput-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 795
    const-string v3, "if-none-match"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string v3, "if-modified-since"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 803
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 804
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2}, Landroid/webkit/CacheLoader;->load()V

    .line 811
    :goto_35
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 815
    :goto_37
    return v1

    .line 807
    :cond_38
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_35

    :cond_48
    move v1, v2

    .line 815
    goto :goto_37
.end method

.method contentLength()J
    .registers 3

    .prologue
    .line 1094
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mContentLength:J

    return-wide v0
.end method

.method public data([BI)V
    .registers 7
    .parameter "data"
    .parameter "length"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, sendMessage:Z
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v2

    .line 638
    :try_start_4
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->isEmpty()Z

    move-result v0

    .line 639
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 640
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1d

    .line 641
    if-eqz v0, :cond_1c

    .line 643
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 645
    :cond_1c
    return-void

    .line 640
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method detachRequestHandle()V
    .registers 2

    .prologue
    .line 1024
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1025
    return-void
.end method

.method downloadFile()V
    .registers 8

    .prologue
    .line 1035
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1039
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1048
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1049
    return-void
.end method

.method public endData()V
    .registers 2

    .prologue
    .line 657
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 658
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .registers 5
    .parameter "id"
    .parameter "description"

    .prologue
    .line 604
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 605
    return-void
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrame()Landroid/webkit/BrowserFrame;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method getWebAddress()Landroid/net/WebAddress;
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    return-object v0
.end method

.method handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 918
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 919
    invoke-virtual {p0, p1, p2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :goto_7
    return-void

    .line 922
    :cond_8
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 923
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_7
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 221
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_8c

    .line 327
    :cond_5
    :goto_5
    return-void

    .line 229
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/Headers;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    goto :goto_5

    .line 238
    :sswitch_e
    iget v3, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v3, :cond_5

    invoke-direct {p0}, Landroid/webkit/LoadListener;->ignoreCallbacks()Z

    move-result v3

    if-nez v3, :cond_5

    .line 239
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    goto :goto_5

    .line 250
    :sswitch_1c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->handleEndData()V

    goto :goto_5

    .line 263
    :sswitch_20
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_5

    .line 277
    :sswitch_2a
    invoke-direct {p0}, Landroid/webkit/LoadListener;->doRedirect()V

    goto :goto_5

    .line 288
    :sswitch_2e
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 289
    .local v0, contMsg:Landroid/os/Message;
    const/16 v3, 0x78

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 290
    .local v2, stopMsg:Landroid/os/Message;
    iget-object v3, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_5

    .line 299
    .end local v0           #contMsg:Landroid/os/Message;
    .end local v2           #stopMsg:Landroid/os/Message;
    :sswitch_44
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 300
    .local v1, status:Ljava/util/HashMap;
    const-string/jumbo v3, "major"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v3, "minor"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v3, "reason"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, v3}, Landroid/webkit/LoadListener;->handleStatus(IIILjava/lang/String;)V

    goto :goto_5

    .line 311
    .end local v1           #status:Ljava/util/HashMap;
    :sswitch_7b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_5

    .line 324
    :sswitch_83
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslError;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleSslError(Landroid/net/http/SslError;)V

    goto/16 :goto_5

    .line 221
    :sswitch_data_8c
    .sparse-switch
        0x64 -> :sswitch_6
        0x6e -> :sswitch_e
        0x78 -> :sswitch_1c
        0x82 -> :sswitch_20
        0x8c -> :sswitch_2a
        0x96 -> :sswitch_2e
        0xa0 -> :sswitch_44
        0xaa -> :sswitch_7b
        0xb4 -> :sswitch_83
    .end sparse-switch
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .registers 5
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 833
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/webkit/Network;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 851
    :cond_e
    :goto_e
    return v0

    .line 838
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 839
    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v2, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_e

    .line 842
    :cond_1b
    const/16 v2, 0xb4

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 848
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v2, :cond_2c

    .line 849
    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iput-object v2, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 851
    :cond_2c
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method handleSslErrorResponse(Z)V
    .registers 3
    .parameter "proceed"

    .prologue
    .line 899
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 900
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    .line 902
    :cond_9
    if-nez p1, :cond_13

    .line 903
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 904
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 906
    :cond_13
    return-void
.end method

.method public headers(Landroid/net/http/Headers;)V
    .registers 7
    .parameter "headers"

    .prologue
    .line 360
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_5

    .line 366
    :goto_4
    return-void

    .line 361
    :cond_5
    invoke-virtual {p1}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v0

    .line 362
    .local v0, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 363
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 365
    :cond_22
    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_4
.end method

.method host()Ljava/lang/String;
    .registers 2

    .prologue
    .line 989
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    if-eqz v0, :cond_b

    .line 990
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 993
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isSynchronous()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    return v0
.end method

.method loadSynchronousMessages()V
    .registers 3

    .prologue
    .line 1685
    :goto_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1686
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1688
    :cond_15
    return-void
.end method

.method makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "username"
    .parameter "password"

    .prologue
    .line 928
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_9

    .line 954
    :cond_8
    :goto_8
    return-void

    .line 932
    :cond_9
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpAuthHeader;->setUsername(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p2}, Landroid/net/http/HttpAuthHeader;->setPassword(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getScheme()I

    move-result v9

    .line 936
    .local v9, scheme:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_28

    .line 938
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 940
    .local v1, isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/http/RequestHandle;->setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 941
    .end local v1           #isProxy:Z
    :cond_28
    const/4 v0, 0x2

    if-ne v9, v0, :cond_8

    .line 943
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 945
    .restart local v1       #isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 946
    .local v4, realm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 947
    .local v5, nonce:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    .line 948
    .local v6, qop:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 949
    .local v7, algorithm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    .line 951
    .local v8, opaque:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestHandle;->setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method mimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method notifyError()V
    .registers 4

    .prologue
    .line 1272
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_1a

    .line 1273
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_c

    const-string v0, ""

    .line 1275
    :cond_c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1278
    .end local v0           #description:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method originalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1001
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1003
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method parseContentTypeHeader(Ljava/lang/String;)V
    .registers 8
    .parameter "contentType"

    .prologue
    const/16 v5, 0x3b

    .line 1466
    if-eqz p1, :cond_6c

    .line 1467
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1468
    .local v1, i:I
    if-ltz v1, :cond_7e

    .line 1469
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1471
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1472
    .local v2, j:I
    if-lez v2, :cond_75

    .line 1473
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1474
    if-ge v1, v2, :cond_23

    .line 1475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1477
    :cond_23
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1482
    :goto_2b
    iget-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_4f

    .line 1488
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 1496
    .end local v2           #j:I
    :cond_4f
    :goto_4f
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1499
    :try_start_57
    sget-object v4, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1500
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1501
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_6c} :catch_85

    .line 1510
    .end local v1           #i:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_6c
    :goto_6c
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1511
    return-void

    .line 1479
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_75
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    goto :goto_2b

    .line 1492
    .end local v2           #j:I
    :cond_7e
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_4f

    .line 1503
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_81
    :try_start_81
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_6c

    .line 1505
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_85
    move-exception v0

    .line 1506
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto :goto_6c
.end method

.method pauseLoad(Z)V
    .registers 3
    .parameter "pause"

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 1286
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->pauseRequest(Z)V

    .line 1288
    :cond_9
    return-void
.end method

.method postIdentifier()J
    .registers 3

    .prologue
    .line 1008
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    return-wide v0
.end method

.method proxyAuthenticate()Z
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_b

    .line 521
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v0

    .line 524
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method realm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_6

    .line 870
    const/4 v0, 0x0

    .line 872
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method resetCancel()V
    .registers 2

    .prologue
    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1076
    return-void
.end method

.method setCacheLoader(Landroid/webkit/CacheLoader;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 765
    iput-object p1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 767
    return-void
.end method

.method setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 4
    .parameter "method"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    .line 967
    iput-object p2, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 968
    iput-object p3, p0, Landroid/webkit/LoadListener;->mPostData:[B

    .line 969
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 1608
    if-eqz p1, :cond_1a

    .line 1609
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    .line 1610
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1611
    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    .line 1613
    :try_start_11
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;
    :try_end_1a
    .catch Landroid/net/ParseException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1621
    :cond_1a
    :goto_1a
    return-void

    .line 1614
    :catch_1b
    move-exception v0

    .line 1615
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_1a

    .line 1618
    .end local v0           #e:Landroid/net/ParseException;
    :cond_20
    iput-object p1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_1a
.end method

.method sslError()Landroid/net/http/SslError;
    .registers 2

    .prologue
    .line 891
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    return-object v0
.end method

.method public status(IIILjava/lang/String;)V
    .registers 8
    .parameter "majorVersion"
    .parameter "minorVersion"
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 543
    .local v0, status:Ljava/util/HashMap;
    const-string/jumbo v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string/jumbo v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->clear()V

    .line 549
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 550
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 551
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 552
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 553
    return-void
.end method

.method tearDown()V
    .registers 4

    .prologue
    .line 1231
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    if-nez v1, :cond_34

    .line 1232
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1233
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1234
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1235
    iget-wide v1, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v1, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1236
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1242
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_22
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_33

    .line 1243
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v1, :cond_2d

    .line 1244
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1247
    :cond_2d
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1248
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1250
    :cond_33
    return-void

    .line 1239
    :cond_34
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22
.end method

.method transferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1083
    iget-object v0, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    return-object v0
.end method
