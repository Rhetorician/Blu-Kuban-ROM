.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;
    }
.end annotation


# static fields
.field private static final PARAM_SEPAR:Ljava/lang/String; = ";"

.field private static final QUERY_PARAM:Ljava/lang/String; = "q="

.field private static final SRC_LANG_PARAM:Ljava/lang/String; = "sl="

.field private static final TARGET_LANG_PARAM:Ljava/lang/String; = "tl="

.field private static final TRANSLATE_SERVICE_URI:Ljava/lang/String; = "g:tws"

.field private static theTranslator:Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;->theTranslator:Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;
    .registers 1

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;->theTranslator:Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;->theTranslator:Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;

    :cond_b
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;->theTranslator:Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;

    return-object v0
.end method

.method public static getSupportedLangPairNames()[Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;->getSupportedLangPairs()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v3, v0

    :goto_c
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_20

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_20
    return-object v2
.end method

.method public static getSupportedLangPairs()Ljava/util/Vector;
    .registers 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;

    const-string v2, "en"

    const-string v3, "fr"

    const-string v4, "English -> French"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;

    const-string v2, "fr"

    const-string v3, "en"

    const-string v4, "French -> English"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;

    const-string v2, "en"

    const-string v3, "de"

    const-string v4, "English -> German"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;

    const-string v2, "en"

    const-string v3, "zh-CN"

    const-string v4, "English -> Simp. Chinese (beta)"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/ServiceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;->getSupportedLangPairs()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;

    iget-object v1, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;->srcCode:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$LanguagePair;->targetCode:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/ServiceCallback;)V

    return-void
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/googlemobile/masf/ServiceCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;

    const-string v2, "g:tws"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$1;

    invoke-direct {v0, p0, p4}, Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService$1;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/services/TranslationService;Lcom/google/android/apps/uploader/googlemobile/masf/ServiceCallback;)V

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->setListener(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;)V

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    return-void
.end method
