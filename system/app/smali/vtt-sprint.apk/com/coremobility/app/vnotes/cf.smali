.class public final Lcom/coremobility/app/vnotes/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/coremobility/integration/app/k;
.implements Lcom/coremobility/integration/b/e;
.implements Lcom/coremobility/integration/i/e;
.implements Lcom/coremobility/integration/i/g;
.implements Lcom/coremobility/integration/i/h;
.implements Lcom/coremobility/k/dg;


# static fields
.field private static F:I

.field private static G:Lcom/coremobility/app/vnotes/cf;

.field private static H:Lcom/coremobility/integration/app/CM_App;

.field private static I:Ljava/util/Vector;

.field private static K:Ljava/util/Vector;

.field private static L:Ljava/util/Vector;

.field private static M:Z

.field private static N:Z

.field private static Y:I

.field public static a:Ljava/lang/String;

.field private static ad:Ljava/lang/String;

.field private static af:Landroid/telephony/TelephonyManager;

.field private static ao:Lcom/coremobility/app/vnotes/kb;

.field private static as:Ljava/util/HashMap;

.field private static at:Ljava/util/HashMap;

.field private static au:Lcom/coremobility/app/vnotes/bk;

.field private static av:Ljava/util/HashMap;

.field private static aw:Ljava/util/HashMap;

.field private static ax:Lcom/coremobility/app/vnotes/da;

.field private static ay:Ljava/lang/String;

.field private static az:Lcom/coremobility/app/customui/o;

.field public static b:I

.field public static c:Z

.field public static d:Z

.field public static e:I


# instance fields
.field private J:Z

.field private O:Ljava/util/Timer;

.field private P:Ljava/util/HashMap;

.field private Q:Z

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private X:I

.field private Z:Z

.field private aA:Ljava/util/Vector;

.field private aB:Ljava/util/Vector;

.field private aC:Ljava/util/Vector;

.field private aD:Landroid/os/Handler;

.field private aE:Landroid/os/Handler;

.field private aF:Landroid/os/Handler;

.field private aa:Lcom/coremobility/app/vnotes/cl;

.field private ab:Landroid/app/Activity;

.field private ac:I

.field private ae:Lcom/coremobility/integration/b;

.field private ag:Ljava/util/Vector;

.field private ah:Z

.field private ai:Landroid/telephony/PhoneStateListener;

.field private aj:Landroid/os/Handler;

.field private ak:Landroid/hardware/SensorManager;

.field private al:Landroid/hardware/Sensor;

.field private am:I

.field private an:Z

.field private ap:Lcom/coremobility/app/vnotes/cp;

.field private aq:Ljava/util/Vector;

.field private ar:Lcom/coremobility/app/vnotes/hp;

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field j:Lcom/coremobility/app/vnotes/cn;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v0, "vvm/temp"

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->a:Ljava/lang/String;

    sput v4, Lcom/coremobility/app/vnotes/cf;->b:I

    const v0, 0xea60

    sput v0, Lcom/coremobility/app/vnotes/cf;->F:I

    sget v0, Lcom/coremobility/a/b;->h:I

    if-ne v0, v4, :cond_44

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/coremobility/app/vnotes/cf;->c:Z

    sget v0, Lcom/coremobility/a/b;->h:I

    if-ne v0, v4, :cond_46

    :goto_1a
    sput-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    const/16 v0, 0xf

    sput v0, Lcom/coremobility/app/vnotes/cf;->e:I

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    sput-boolean v1, Lcom/coremobility/app/vnotes/cf;->M:Z

    sput-boolean v1, Lcom/coremobility/app/vnotes/cf;->N:Z

    const/4 v0, -0x1

    sput v0, Lcom/coremobility/app/vnotes/cf;->Y:I

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->ao:Lcom/coremobility/app/vnotes/kb;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->as:Ljava/util/HashMap;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->at:Ljava/util/HashMap;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->au:Lcom/coremobility/app/vnotes/bk;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->av:Ljava/util/HashMap;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->aw:Ljava/util/HashMap;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->ax:Lcom/coremobility/app/vnotes/da;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->ay:Ljava/lang/String;

    sput-object v3, Lcom/coremobility/app/vnotes/cf;->az:Lcom/coremobility/app/customui/o;

    return-void

    :cond_44
    move v0, v2

    goto :goto_14

    :cond_46
    move v2, v1

    goto :goto_1a
.end method

.method public constructor <init>(Lcom/coremobility/integration/app/CM_App;)V
    .registers 12

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->J:Z

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->O:Ljava/util/Timer;

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->P:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->g:Z

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->aa:Lcom/coremobility/app/vnotes/cl;

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->ab:Landroid/app/Activity;

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->ae:Lcom/coremobility/integration/b;

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->ah:Z

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->ai:Landroid/telephony/PhoneStateListener;

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->aj:Landroid/os/Handler;

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->ak:Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->al:Landroid/hardware/Sensor;

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->am:I

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->an:Z

    iput v9, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    iput v9, p0, Lcom/coremobility/app/vnotes/cf;->i:I

    new-instance v0, Lcom/coremobility/app/vnotes/cn;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/cn;-><init>(Lcom/coremobility/app/vnotes/cf;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->j:Lcom/coremobility/app/vnotes/cn;

    iput-object v6, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    const-string v0, "VnoteApp create start"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/coremobility/integration/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v3

    sput-object p0, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    sput-object p1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/app/vnotes/cf;->R:I

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->Q:Z

    new-instance v0, Lcom/coremobility/app/vnotes/cp;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/cp;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ap:Lcom/coremobility/app/vnotes/cp;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->ao:Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "preference_from_name"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/app/vnotes/kd;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_inbox_sort_order"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/cf;->am:I

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    invoke-static {}, Lcom/coremobility/integration/i/f;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->Z:Z

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->J:Z

    if-eqz v0, :cond_117

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->f()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->af()V

    :cond_af
    new-instance v0, Lcom/coremobility/app/vnotes/cg;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/cg;-><init>(Lcom/coremobility/app/vnotes/cf;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aD:Landroid/os/Handler;

    new-instance v0, Lcom/coremobility/app/vnotes/ch;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ch;-><init>(Lcom/coremobility/app/vnotes/cf;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aE:Landroid/os/Handler;

    new-instance v0, Lcom/coremobility/app/vnotes/ci;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ci;-><init>(Lcom/coremobility/app/vnotes/cf;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aF:Landroid/os/Handler;

    new-instance v0, Lcom/coremobility/app/vnotes/cj;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/cj;-><init>(Lcom/coremobility/app/vnotes/cf;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ai:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/coremobility/app/vnotes/ck;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/ck;-><init>(Lcom/coremobility/app/vnotes/cf;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aj:Landroid/os/Handler;

    new-instance v0, Lcom/coremobility/app/vnotes/cl;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coremobility/app/vnotes/cl;-><init>(Lcom/coremobility/app/vnotes/cf;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aa:Lcom/coremobility/app/vnotes/cl;

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->X:I

    new-instance v0, Lcom/coremobility/integration/b;

    invoke-direct {v0}, Lcom/coremobility/integration/b;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ae:Lcom/coremobility/integration/b;

    sput-object p0, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    invoke-static {}, Lcom/coremobility/g/m;->c()J

    move-result-wide v0

    sub-long/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VnoteApp created in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/coremobility/integration/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/app/vnotes/cm;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/cm;-><init>(Lcom/coremobility/app/vnotes/cf;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/cm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_117
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_inbox_filter_line_addr"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_af

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v5, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_134
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_17f

    invoke-static {v6}, Lcom/coremobility/app/vnotes/cq;->d(Ljava/lang/String;)I

    move-result v0

    if-ne v9, v0, :cond_17f

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cf;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_175

    packed-switch v1, :pswitch_data_18e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v8, 0x7f0c0020

    invoke-virtual {v7, v8}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_175
    :goto_175
    iget-object v7, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    new-instance v8, Lcom/coremobility/app/vnotes/jy;

    invoke-direct {v8, v6, v0}, Lcom/coremobility/app/vnotes/jy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_17f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_134

    :pswitch_183
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v7, 0x7f0c001f

    invoke-virtual {v0, v7}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_175

    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_183
    .end packed-switch
.end method

.method public static A()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/app/vnotes/cf;->N:Z

    return-void
.end method

.method public static B()Ljava/lang/String;
    .registers 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_32
    return-object v0
.end method

.method public static C()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    const/16 v3, 0x404

    invoke-virtual {v2, v3, v1, v1}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public static G()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/coremobility/app/vnotes/kd;->b:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x6

    const-string v1, "Could not get archive email preference"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_8
.end method

.method public static H()I
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v1

    if-eqz v1, :cond_a

    iget v0, v1, Lcom/coremobility/app/vnotes/kd;->e:I

    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x6

    const-string v2, "Could not get archive mode preference"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static I()Lcom/coremobility/app/vnotes/cd;
    .registers 6

    new-instance v0, Lcom/coremobility/app/vnotes/cd;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/cd;-><init>()V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_twitter_auth_access_token"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preference_twitter_auth_token_secret"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "preference_twitter_user_screen_name"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v2, v0, Lcom/coremobility/app/vnotes/cd;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/coremobility/app/vnotes/cd;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/coremobility/app/vnotes/cd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static J()V
    .registers 3

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static K()I
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_vtt_confirm_unsub"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static L()V
    .registers 1

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c()V

    :cond_d
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->c()V

    :cond_1a
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b()V

    :cond_27
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b()Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b()Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f()V

    :cond_34
    return-void
.end method

.method public static N()Z
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_unsub_end_of_month"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static O()V
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_show_unsub_end_of_month"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static Q()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    return-object v0
.end method

.method public static R()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_application_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static U()Z
    .registers 5

    const/4 v4, 0x6

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_12

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/app/CM_App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    :cond_12
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User in voice call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_37
    return v0

    :cond_38
    move v0, v1

    goto :goto_1f

    :cond_3a
    const-string v0, "telephonyManager was not created"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_37
.end method

.method public static V()Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Lcom/coremobility/app/vnotes/cf;->Y:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/integration/a/a;->d()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    sput v0, Lcom/coremobility/app/vnotes/cf;->Y:I

    :cond_14
    :goto_14
    return v0

    :cond_15
    sput v1, Lcom/coremobility/app/vnotes/cf;->Y:I

    move v0, v1

    goto :goto_14

    :cond_19
    sget v2, Lcom/coremobility/app/vnotes/cf;->Y:I

    if-gtz v2, :cond_14

    move v0, v1

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;F)I
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_3
.end method

.method public static a([J)J
    .registers 6

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_12

    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_f

    aget-wide v0, p0, v0

    :goto_e
    return-wide v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    move-wide v0, v1

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smvvm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [B

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rws"

    invoke-direct {v4, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8f} :catch_92

    move-result-object v0

    goto/16 :goto_7

    :catch_92
    move-exception v1

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFromSdcard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7
.end method

.method private static a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;J)Landroid/widget/RemoteViews;
    .registers 14

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/a/a;->c()I

    move-result v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8c

    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030037

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1c
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    long-to-int v2, p4

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    iget v3, v3, Lcom/coremobility/app/vnotes/cf;->X:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v1, v2, v3, v6, v7}, Lcom/coremobility/j/p;->a(JIZZ)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    if-eqz v5, :cond_b3

    invoke-virtual {v5}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cf;->c(Ljava/lang/String;)Z

    move-result v1

    move v3, v1

    :goto_43
    if-eqz v5, :cond_b6

    invoke-virtual {v5}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_54

    const/4 v5, 0x1

    if-le v7, v5, :cond_10b

    if-nez v3, :cond_10b

    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_b8

    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v3}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030035

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v0

    :goto_69
    sparse-switch p0, :sswitch_data_10e

    move-object v0, v2

    :goto_6d
    const v2, 0x7f0b00a2

    invoke-virtual {v3, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0b00a3

    invoke-virtual {v3, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0b00a4

    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b00a5

    invoke-virtual {v3, v0, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b00a1

    invoke-virtual {v3, v0, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-object v3

    :cond_8c
    const/16 v0, 0xd

    if-eq v4, v0, :cond_93

    const/4 v0, 0x6

    if-ne v4, v0, :cond_a3

    :cond_93
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030038

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_1c

    :cond_a3
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030036

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_1c

    :cond_b3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_43

    :cond_b6
    move-object v1, p3

    goto :goto_49

    :cond_b8
    const/16 v0, 0xd

    if-eq v4, v0, :cond_bf

    const/4 v0, 0x6

    if-ne v4, v0, :cond_cf

    :cond_bf
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v3}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030039

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v0

    goto :goto_69

    :cond_cf
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v3}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030034

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v0

    goto :goto_69

    :sswitch_df
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    const/4 v0, 0x1

    if-le v7, v0, :cond_eb

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_6d

    :cond_eb
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6d

    :sswitch_f1
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c02b4

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->B()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p3

    goto/16 :goto_6d

    :cond_10b
    move-object v3, v0

    goto/16 :goto_69

    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_df
        0x6 -> :sswitch_f1
    .end sparse-switch
.end method

.method private static a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .registers 9

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v0, "\\s\\s+|\\n|\\r"

    const-string v3, " "

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_16
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/app/CM_App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0x8

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;F)I

    move-result v0

    if-le v0, v3, :cond_8a

    const/4 v0, 0x2

    :goto_3d
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/integration/a/a;->c()I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_90

    if-le v0, v2, :cond_8c

    const v0, 0x7f03003e

    :goto_50
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v4}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f0b00a2

    invoke-virtual {v3, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b00a3

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :cond_6e
    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b00a1

    invoke-virtual {v3, v0, p0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v0, 0x7f0b00a5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    iget v1, v1, Lcom/coremobility/app/vnotes/cf;->X:I

    invoke-static {v4, v5, v1, v2, v2}, Lcom/coremobility/j/p;->a(JIZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v3

    :cond_8a
    move v0, v2

    goto :goto_3d

    :cond_8c
    const v0, 0x7f03003b

    goto :goto_50

    :cond_90
    const/16 v4, 0xd

    if-eq v3, v4, :cond_97

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a1

    :cond_97
    if-le v0, v2, :cond_9d

    const v0, 0x7f03003f

    goto :goto_50

    :cond_9d
    const v0, 0x7f03003c

    goto :goto_50

    :cond_a1
    if-le v0, v2, :cond_a7

    const v0, 0x7f03003d

    goto :goto_50

    :cond_a7
    const v0, 0x7f03003a

    goto :goto_50

    :cond_ab
    move-object v1, v0

    goto/16 :goto_16
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/cf;)Lcom/coremobility/app/vnotes/hp;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ar:Lcom/coremobility/app/vnotes/hp;

    return-object v0
.end method

.method private static a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    new-instance v0, Lcom/coremobility/app/vnotes/ke;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/ke;-><init>()V

    iget-object v1, p0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/coremobility/app/vnotes/ke;->e:Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/l/ac;->b:I

    iput v1, v0, Lcom/coremobility/app/vnotes/ke;->b:I

    iget-object v1, p0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/coremobility/app/vnotes/ke;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/coremobility/app/vnotes/ke;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/coremobility/app/vnotes/ke;->f:Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/l/ac;->f:I

    iput v1, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    iget-object v1, p0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/coremobility/app/vnotes/ke;->g:Ljava/lang/String;

    :cond_24
    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_9
    packed-switch p0, :pswitch_data_7a

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v3, 0x7f0c02c7

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    move v0, v2

    goto :goto_9

    :pswitch_22
    if-eqz v0, :cond_36

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v3, 0x7f0c02c3

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_36
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c02c2

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :pswitch_46
    if-eqz v0, :cond_5a

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v3, 0x7f0c02c5

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_5a
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c02c4

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_6a
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c02c6

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_46
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p2, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;IIII)Ljava/lang/String;
    .registers 9

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;IF)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move-object v1, p0

    :goto_5
    invoke-static {v1, p2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;F)I

    move-result v2

    if-lt v2, p1, :cond_15

    if-ltz v0, :cond_15

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_15
    return-object v1
.end method

.method private a(Ljava/util/Vector;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_6
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    if-nez v1, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    :goto_18
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_6

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_3e
    move-object v2, v1

    :cond_3f
    return-object v2
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/cf;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cf;->P:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/cf;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cf;->O:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    return-object p1
.end method

.method public static a(IILcom/coremobility/app/vnotes/ct;Ljava/util/Vector;Lcom/coremobility/integration/h/c;)V
    .registers 13

    const/4 v7, 0x4

    const/4 v6, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_98

    sget-object v1, Lcom/coremobility/integration/app/k;->B:Landroid/net/Uri;

    :goto_d
    sget-object v2, Lcom/coremobility/app/vnotes/cq;->d:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "record_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9c

    move v1, v6

    :cond_77
    if-nez v1, :cond_7d

    const/4 v1, 0x1

    invoke-static {v2, p2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;Lcom/coremobility/app/vnotes/ct;)V

    :cond_7d
    new-instance v3, Lcom/coremobility/app/vnotes/cs;

    invoke-direct {v3}, Lcom/coremobility/app/vnotes/cs;-><init>()V

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;Lcom/coremobility/app/vnotes/cs;)V

    invoke-virtual {p3, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_77

    const/4 v1, 0x3

    if-ne p0, v1, :cond_94

    invoke-static {v0, v6}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/ContentResolver;I)V

    :cond_94
    :goto_94
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_97
    return-void

    :cond_98
    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    goto/16 :goto_d

    :cond_9c
    iput v7, p4, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_94

    :cond_9f
    iput v7, p4, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_97
.end method

.method private static a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JJZZZ)V
    .registers 25

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/app/CM_App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/app/NotificationManager;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_20

    const-string v5, ""

    if-eq p2, v5, :cond_20

    const/4 v5, 0x3

    if-ne p0, v5, :cond_20

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    :cond_20
    new-instance v10, Landroid/app/Notification;

    if-eqz v2, :cond_3b

    :goto_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v10, p1, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    packed-switch p0, :pswitch_data_316

    move-object v2, v9

    :goto_2f
    if-nez v4, :cond_2b6

    const/4 v2, 0x6

    const-string v3, "content Intent is null "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    move-object v2, p2

    goto :goto_24

    :pswitch_3d
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "preference_vtt_notification_mode"

    const/4 v6, 0x2

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_13f

    const-wide/16 v5, 0x0

    cmp-long v2, p5, v5

    if-eqz v2, :cond_13f

    invoke-static/range {p7 .. p8}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v2

    if-nez v2, :cond_67

    invoke-static/range {p7 .. p8}, Lcom/coremobility/app/vnotes/cq;->b(J)Z

    move-result v2

    if-eqz v2, :cond_313

    :cond_67
    sget-boolean v2, Lcom/coremobility/a/b;->c:Z

    if-eqz v2, :cond_c6

    move v2, p0

    move v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;J)Landroid/widget/RemoteViews;

    move-result-object v3

    const/4 v2, 0x1

    iput-object v3, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_7a
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-class v5, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "autoplay"

    move-wide/from16 v0, p5

    long-to-int v5, v0

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "vnoteid"

    move-wide/from16 v0, p5

    long-to-int v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "vnotedir"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "use_filter"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move v12, v2

    move-object v2, v3

    move v3, v12

    :goto_b4
    iget v4, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v10, Landroid/app/Notification;->flags:I

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iput v4, v10, Landroid/app/Notification;->number:I

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_2f

    :cond_c6
    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v2, :cond_310

    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f030033

    invoke-direct {v3, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    move-wide/from16 v0, p5

    long-to-int v4, v0

    invoke-static {v2, v4}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->a(I)I

    move-result v2

    const v5, 0x7f0b0011

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f0b0050

    move-object/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f0b001f

    invoke-virtual {v3, v5, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v5, 0x7f0b009d

    invoke-virtual {v3, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v2, 0x7f0b009e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0b007e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    iget v6, v6, Lcom/coremobility/app/vnotes/cf;->X:I

    const/4 v7, 0x1

    const/4 v11, 0x1

    invoke-static {v4, v5, v6, v7, v11}, Lcom/coremobility/j/p;->a(JIZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v2, 0x1

    iput-object v3, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_7a

    :cond_13f
    sget-boolean v2, Lcom/coremobility/a/b;->c:Z

    if-eqz v2, :cond_152

    move v2, p0

    move v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;J)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v3, 0x1

    iput-object v2, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_152
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-class v5, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x1400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto/16 :goto_b4

    :pswitch_16b
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b3

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_195
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget v3, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v10, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v4

    const/4 v3, 0x1

    iput-object v4, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_2f

    :cond_1b3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    const-string v4, "voicemail:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_195

    :pswitch_1c1
    if-eqz p4, :cond_30d

    const-string v2, ""

    move-object/from16 v0, p4

    if-eq v0, v2, :cond_30d

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    :goto_1d1
    new-instance v4, Landroid/content/Intent;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-class v5, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.sprint.action.UPGRADE_CHECK"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    const-wide/16 v6, 0x0

    cmp-long v3, p5, v6

    if-nez v3, :cond_212

    const/4 v3, 0x1

    :goto_1e8
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x1400

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v3, p5, v5

    if-nez v3, :cond_205

    iget v3, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v10, Landroid/app/Notification;->flags:I

    :cond_205
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v5

    const/4 v3, 0x1

    iput-object v5, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_2f

    :cond_212
    const/4 v3, 0x0

    goto :goto_1e8

    :pswitch_214
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-class v4, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget v3, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v10, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v4

    const/4 v3, 0x1

    iput-object v4, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_2f

    :pswitch_240
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-class v4, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget v3, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v10, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v4

    const/4 v3, 0x1

    iput-object v4, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_2f

    :pswitch_26c
    move v2, p0

    move v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;J)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v3, 0x1

    iput-object v2, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-class v5, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "autoplay"

    move-wide/from16 v0, p5

    long-to-int v5, v0

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "vnoteid"

    move-wide/from16 v0, p5

    long-to-int v5, v0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "vnotedir"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget v4, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v10, Landroid/app/Notification;->flags:I

    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_2f

    :cond_2b6
    if-eqz v3, :cond_2f8

    iput-object v4, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :goto_2ba
    if-eqz p9, :cond_2c4

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_326

    iput-object v2, v10, Landroid/app/Notification;->vibrate:[J

    :cond_2c4
    if-eqz p11, :cond_2d2

    iget v2, v10, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v10, Landroid/app/Notification;->defaults:I

    iget v2, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v10, Landroid/app/Notification;->flags:I

    :cond_2d2
    if-eqz p10, :cond_2ed

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_ringtone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_306

    iget v2, v10, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v10, Landroid/app/Notification;->defaults:I

    :cond_2ed
    :goto_2ed
    iget v2, v10, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v10, Landroid/app/Notification;->defaults:I

    invoke-virtual {v8, p0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_3a

    :cond_2f8
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    if-eqz v2, :cond_2fe

    move-object/from16 p4, v2

    :cond_2fe
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v10, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2ba

    :cond_306
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2ed

    :cond_30d
    move-object v2, v9

    goto/16 :goto_1d1

    :cond_310
    move v2, v3

    goto/16 :goto_7a

    :cond_313
    move-object v2, v4

    goto/16 :goto_b4

    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_16b
        :pswitch_1c1
        :pswitch_214
        :pswitch_240
        :pswitch_26c
    .end packed-switch

    :array_326
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(ILcom/coremobility/app/vnotes/ct;Ljava/util/Vector;Lcom/coremobility/integration/h/c;)V
    .registers 16

    const/16 v5, 0xb

    const/4 v11, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_11

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v0

    if-nez v0, :cond_11

    iput v5, p3, Lcom/coremobility/integration/h/c;->a:I

    :cond_10
    :goto_10
    return-void

    :cond_11
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v3, 0x0

    iput p0, p1, Lcom/coremobility/app/vnotes/ct;->b:I

    iget v0, p1, Lcom/coremobility/app/vnotes/ct;->n:I

    or-int/lit8 v0, v0, 0x0

    iput v0, p1, Lcom/coremobility/app/vnotes/ct;->n:I

    iget v0, p1, Lcom/coremobility/app/vnotes/ct;->n:I

    const v4, -0x8001

    and-int/2addr v0, v4

    iput v0, p1, Lcom/coremobility/app/vnotes/ct;->n:I

    invoke-static {p1}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/ct;)Landroid/content/ContentValues;

    move-result-object v0

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->x:Landroid/net/Uri;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sget-object v4, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_44

    const-string v0, "VNOTES PROVIDER - Insert Inbox Vnote Failed! "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v5, p3, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_10

    :cond_44
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v8

    move v4, v2

    move v5, v2

    move-object v0, v3

    :goto_59
    if-ge v4, v8, :cond_11c

    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/cs;

    add-int/lit8 v3, v5, 0x41

    int-to-char v3, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SD-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/coremobility/app/vnotes/cf;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v0, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    iget-object v9, v0, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v9, v3}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_f3

    move v0, v1

    :goto_9b
    if-eqz v0, :cond_111

    if-eqz v3, :cond_df

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "smvvm"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_df
    if-eqz v7, :cond_e6

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0, v7, p0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IIZ)Z

    :cond_e6
    const-string v0, "VNOTES PROVIDER - Insert Vnote Failed! "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc

    iput v0, p3, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_10

    :cond_f3
    iput-object v3, v0, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v7}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/cs;I)Landroid/content/ContentValues;

    move-result-object v0

    sget-object v9, Lcom/coremobility/app/vnotes/cf;->y:Landroid/net/Uri;

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    sget-object v9, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    invoke-virtual {v0, v9}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_10b

    move v0, v1

    goto :goto_9b

    :cond_10b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v0, v3

    goto/16 :goto_59

    :cond_111
    const/4 v0, 0x3

    if-ne p0, v0, :cond_10

    const/4 v0, -0x1

    if-eq v7, v0, :cond_10

    invoke-static {v6, v7}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/ContentResolver;I)V

    goto/16 :goto_10

    :cond_11c
    move-object v3, v0

    move v0, v2

    goto/16 :goto_9b
.end method

.method public static a(ILcom/coremobility/app/vnotes/ct;Ljava/util/Vector;Ljava/util/Vector;Lcom/coremobility/integration/h/c;)V
    .registers 18

    const/4 v1, 0x3

    if-ne p0, v1, :cond_10

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->l()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0xb

    move-object/from16 v0, p4

    iput v1, v0, Lcom/coremobility/integration/h/c;->a:I

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput p0, p1, Lcom/coremobility/app/vnotes/ct;->b:I

    iget v1, p1, Lcom/coremobility/app/vnotes/ct;->n:I

    const/high16 v2, 0x30

    or-int/2addr v1, v2

    iput v1, p1, Lcom/coremobility/app/vnotes/ct;->n:I

    invoke-static {p1}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/ct;)Landroid/content/ContentValues;

    move-result-object v1

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_33

    if-nez p3, :cond_43

    :cond_33
    const/4 v1, 0x6

    const-string v2, "VNOTES PROVIDER - Insert Inbox Vnote Failed! "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xb

    move-object/from16 v0, p4

    iput v1, v0, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_f

    :cond_43
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v1, 0x0

    move v3, v1

    :goto_58
    if-ge v3, v6, :cond_14b

    invoke-virtual {p2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/coremobility/app/vnotes/cs;

    iget v1, v2, Lcom/coremobility/app/vnotes/cs;->a:I

    int-to-long v7, v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "VN-%04X"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    long-to-int v1, v7

    sparse-switch v1, :sswitch_data_156

    :goto_89
    const/16 v1, 0x1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GenerateVnoteFilename With "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_137

    iget-object v7, v2, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    iput-object v1, v2, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/cs;I)Landroid/content/ContentValues;

    move-result-object v2

    sget-object v7, Lcom/coremobility/app/vnotes/cf;->o:Landroid/net/Uri;

    invoke-virtual {v4, v7, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    sget-object v7, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_146

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1, v5, p0}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    const/4 v1, 0x6

    const-string v2, "VNOTES PROVIDER - Insert Vnote Failed! "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xb

    move-object/from16 v0, p4

    iput v1, v0, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_f

    :sswitch_106
    const-string v1, ".TXT"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_89

    :sswitch_10d
    const-string v1, ".AMR"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_89

    :sswitch_114
    const-string v1, ".AWB"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_89

    :sswitch_11b
    const-string v1, ".EVF"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_89

    :sswitch_122
    const-string v1, ".EVH"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_89

    :sswitch_129
    const-string v1, ".MP3"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_89

    :sswitch_130
    const-string v1, ".QCP"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_89

    :cond_137
    const/4 v1, 0x6

    const-string v2, "VNOTES PROVIDER - Insert Vnote Failed! FileName is empty"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xb

    move-object/from16 v0, p4

    iput v1, v0, Lcom/coremobility/integration/h/c;->a:I

    :cond_146
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_58

    :cond_14b
    const/4 v1, 0x3

    if-ne p0, v1, :cond_f

    const/4 v1, -0x1

    if-eq v5, v1, :cond_f

    invoke-static {v4, v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/ContentResolver;I)V

    goto/16 :goto_f

    :sswitch_data_156
    .sparse-switch
        0x1 -> :sswitch_106
        0x2 -> :sswitch_106
        0xb -> :sswitch_11b
        0xc -> :sswitch_122
        0x12 -> :sswitch_10d
        0x13 -> :sswitch_114
        0x14 -> :sswitch_129
        0x15 -> :sswitch_130
        0x16 -> :sswitch_130
    .end sparse-switch
.end method

.method public static a(ILcom/coremobility/integration/h/c;)V
    .registers 16

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0xb

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    :goto_a
    iget v0, p1, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_1d

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IIZ)Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/da;->a(Landroid/database/Cursor;)V

    :cond_1d
    return-void

    :cond_1e
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->n()Z

    move-result v0

    if-nez v0, :cond_29

    const/16 v0, 0xc

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto :goto_a

    :cond_29
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/cq;->d:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir_id=3 AND _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "record_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_215

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_210

    move v5, v7

    move-object v4, v8

    move v1, v9

    move v3, v10

    :goto_8d
    if-nez v1, :cond_21a

    const/4 v2, 0x1

    new-instance v1, Lcom/coremobility/app/vnotes/ct;

    invoke-direct {v1}, Lcom/coremobility/app/vnotes/ct;-><init>()V

    invoke-static {v12, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;Lcom/coremobility/app/vnotes/ct;)V

    sget-object v7, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v8, 0x5

    invoke-static {v7, v1, v8}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/app/vnotes/ct;I)I

    move-result v7

    if-eqz v7, :cond_12d

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VNOTES PROVIDER - Duplicated Vnote! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v6

    move-object v1, v4

    :goto_c0
    if-eqz v0, :cond_11a

    if-eqz v1, :cond_104

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "smvvm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_104
    if-eqz v3, :cond_10d

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IIZ)Z

    :cond_10d
    const/4 v0, 0x6

    const-string v1, "VNOTES PROVIDER - Insert Saved Vnotes Failed! "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    :cond_11a
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-instance v2, Lcom/coremobility/integration/h/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coremobility/integration/h/c;-><init>(B)V

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    :goto_128
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    :cond_12d
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v7, v1, Lcom/coremobility/app/vnotes/ct;->a:I

    const/4 v8, 0x3

    invoke-static {v7, v8, p1}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    iget v7, p1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v7, :cond_166

    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CopyInboxToSavedMailbox VnoteSetSafe("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/coremobility/app/vnotes/ct;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed with error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    move-object v1, v4

    goto/16 :goto_c0

    :cond_166
    const/4 v7, 0x5

    iput v7, v1, Lcom/coremobility/app/vnotes/ct;->b:I

    iget v7, v1, Lcom/coremobility/app/vnotes/ct;->n:I

    const v8, -0x8001

    and-int/2addr v7, v8

    iput v7, v1, Lcom/coremobility/app/vnotes/ct;->n:I

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/ct;)Landroid/content/ContentValues;

    move-result-object v1

    sget-object v7, Lcom/coremobility/app/vnotes/cf;->x:Landroid/net/Uri;

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sget-object v7, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    invoke-virtual {v1, v7}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v7

    if-nez v7, :cond_194

    const/4 v0, 0x6

    const-string v1, "VNOTES PROVIDER - Insert Saved Vnotes Failed! "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xb

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    move v0, v6

    move-object v1, v4

    goto/16 :goto_c0

    :cond_194
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v13, v2

    move v2, v1

    move v1, v13

    :goto_1a6
    new-instance v7, Lcom/coremobility/app/vnotes/cs;

    invoke-direct {v7}, Lcom/coremobility/app/vnotes/cs;-><init>()V

    invoke-static {v12, v7}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;Lcom/coremobility/app/vnotes/cs;)V

    add-int/lit8 v3, v5, 0x41

    int-to-char v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SD-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cf;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1e7

    const/4 v0, 0x1

    move-object v1, v3

    move v3, v2

    goto/16 :goto_c0

    :cond_1e7
    iput-object v3, v7, Lcom/coremobility/app/vnotes/cs;->c:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v5, 0x1

    invoke-static {v7, v2}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/app/vnotes/cs;I)Landroid/content/ContentValues;

    move-result-object v5

    sget-object v7, Lcom/coremobility/app/vnotes/cf;->y:Landroid/net/Uri;

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    sget-object v7, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-nez v5, :cond_205

    const/4 v0, 0x1

    move-object v1, v3

    move v3, v2

    goto/16 :goto_c0

    :cond_205
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_21c

    move v0, v6

    move-object v1, v3

    move v3, v2

    goto/16 :goto_c0

    :cond_210
    const/4 v0, 0x4

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_128

    :cond_215
    const/4 v0, 0x4

    iput v0, p1, Lcom/coremobility/integration/h/c;->a:I

    goto/16 :goto_a

    :cond_21a
    move v2, v3

    goto :goto_1a6

    :cond_21c
    move v5, v4

    move-object v4, v3

    move v3, v2

    goto/16 :goto_8d
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_vtt_notification_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/coremobility/k/de;)V
    .registers 14

    const/4 v0, 0x6

    const/4 v9, 0x0

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    invoke-virtual {p1}, Lcom/coremobility/k/de;->h()Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0c00b6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f02007b

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v7

    move v10, v9

    move v11, v9

    invoke-static/range {v0 .. v11}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JJZZZ)V

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_hide_subscription_button"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;ZZ)V
    .registers 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_show_optional_upgrade"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_dontshow_upgrade_selection"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_36

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x505

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_dontshow_upgrade_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_36
    return-void
.end method

.method public static a(Lcom/a/a/e;)V
    .registers 3

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/a/a/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_facebook_token"

    invoke-virtual {p0}, Lcom/a/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_facebook_expires_in"

    invoke-virtual {p0}, Lcom/a/a/e;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_facebook_uid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_facebook_name"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_facebook_app_id"

    invoke-virtual {p0}, Lcom/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/cf;I)V
    .registers 6

    sget-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lcom/coremobility/integration/app/CM_App;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aj:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aj:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    if-ge v1, v2, :cond_23

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bm;

    invoke-interface {v0, p1}, Lcom/coremobility/app/vnotes/bm;->b(I)V

    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c
.end method

.method private declared-synchronized a(Lcom/coremobility/k/de;IJ)V
    .registers 23

    monitor-enter p0

    if-nez p1, :cond_12

    move-wide/from16 v0, p3

    long-to-int v2, v0

    move v15, v2

    :goto_7
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    sparse-switch p2, :sswitch_data_362

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->g()I

    move-result v2

    move v15, v2

    goto :goto_7

    :sswitch_18
    new-instance v14, Lcom/coremobility/app/vnotes/ka;

    invoke-direct {v14}, Lcom/coremobility/app/vnotes/ka;-><init>()V

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Lcom/coremobility/app/vnotes/ka;->a(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/coremobility/app/vnotes/ka;->b(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/coremobility/app/vnotes/ka;->c(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/coremobility/app/vnotes/ka;->a(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v14, v2, v3}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->b()[J

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/coremobility/app/vnotes/ka;->d(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/coremobility/app/vnotes/ka;->e(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/coremobility/app/vnotes/ka;->f(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/coremobility/app/vnotes/ka;->g(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->n()I

    move-result v4

    invoke-virtual {v14, v4}, Lcom/coremobility/app/vnotes/ka;->a(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_103

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    const-wide/16 v16, 0x0

    cmp-long v2, v5, v16

    if-nez v2, :cond_100

    const/4 v2, 0x1

    :goto_7a
    if-eqz v2, :cond_106

    invoke-static {v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_106

    const/4 v2, 0x1

    :goto_83
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_109

    if-nez v2, :cond_109

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [I

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->c()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->w()I

    move-result v11

    invoke-virtual {v14, v8, v9}, Lcom/coremobility/app/vnotes/ka;->c(J)V

    const/4 v8, 0x0

    aput v10, v2, v8

    const/4 v8, 0x0

    aput-object v4, v3, v8

    const/4 v4, 0x0

    aput v11, v5, v4

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->y()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->x()I

    move-result v8

    aput v8, v7, v4

    invoke-virtual {v14, v2}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    invoke-virtual {v14, v3}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    invoke-virtual {v14, v6}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    :goto_d0
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_db
    .catchall {:try_start_12 .. :try_end_db} :catchall_fd
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_db} :catch_dd

    goto/16 :goto_10

    :catch_dd
    move-exception v2

    const/4 v3, 0x6

    :try_start_df
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in update cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_df .. :try_end_fb} :catchall_fd

    goto/16 :goto_10

    :catchall_fd
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_100
    const/4 v2, 0x0

    goto/16 :goto_7a

    :cond_103
    const/4 v2, 0x0

    goto/16 :goto_7a

    :cond_106
    const/4 v2, 0x0

    goto/16 :goto_83

    :cond_109
    :try_start_109
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->n:Landroid/net/Uri;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x6

    const-string v5, "updateVnoteCache VN_EVENT_VNOTEADDED query executed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_1b1

    const-string v5, "file_type!=2"

    :goto_120
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/coremobility/app/vnotes/cq;->c:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    const/4 v2, 0x6

    const-string v3, "updateVnoteCache VN_EVENT_VNOTEADDED query finished"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v16, :cond_359

    const/4 v8, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v6, v2, [I

    new-array v5, v2, [Ljava/lang/String;

    new-array v7, v2, [J

    new-array v4, v2, [I

    new-array v3, v2, [Ljava/lang/String;

    new-array v2, v2, [I

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_18f

    :cond_150
    const/4 v9, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v9, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v6, v8

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    aput-wide v9, v7, v8

    const/4 v9, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v4, v8

    const/4 v9, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aput v9, v2, v8

    const/4 v9, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_150

    :cond_18f
    :goto_18f
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    invoke-static {v7}, Lcom/coremobility/app/vnotes/cf;->a([J)J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Lcom/coremobility/app/vnotes/ka;->c(J)V

    invoke-virtual {v14, v6}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    invoke-virtual {v14, v5}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    invoke-virtual {v14, v3}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->z()Lcom/coremobility/l/an;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/coremobility/app/vnotes/ka;->a(Lcom/coremobility/l/an;)V

    goto/16 :goto_d0

    :cond_1b1
    const/4 v5, 0x0

    goto/16 :goto_120

    :sswitch_1b4
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    move-object v8, v0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-eqz v8, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_281

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->n:Landroid/net/Uri;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x6

    const-string v4, "updateVnoteCache VN_EVENT_VNOTEADDED query executed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/coremobility/app/vnotes/cq;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    const/4 v2, 0x6

    const-string v3, "updateVnoteCache VN_EVENT_VNOTEADDED query finished"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_352

    const/4 v7, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v6, v2, [I

    new-array v5, v2, [Ljava/lang/String;

    new-array v4, v2, [I

    new-array v3, v2, [Ljava/lang/String;

    new-array v2, v2, [I

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_245

    :cond_21a
    const/4 v10, 0x3

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    const/4 v10, 0x2

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    aput v10, v6, v7

    const/4 v10, 0x5

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    aput v10, v4, v7

    const/4 v10, 0x6

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    aput v10, v2, v7

    const/4 v10, 0x7

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_21a

    :cond_245
    :goto_245
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    :goto_24d
    array-length v2, v6

    const/4 v10, 0x1

    if-le v2, v10, :cond_310

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->z()Lcom/coremobility/l/an;

    move-result-object v2

    if-nez v2, :cond_310

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34f

    invoke-static/range {v16 .. v16}, Lcom/coremobility/l/ah;->a(Ljava/lang/String;)Lcom/coremobility/l/an;

    move-result-object v2

    :goto_261
    if-eqz v2, :cond_266

    invoke-virtual {v8, v2}, Lcom/coremobility/app/vnotes/ka;->a(Lcom/coremobility/l/an;)V

    :cond_266
    :goto_266
    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/coremobility/app/vnotes/ka;->g(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    invoke-virtual {v8, v6}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    invoke-virtual {v8, v4}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    invoke-virtual {v8, v2}, Lcom/coremobility/app/vnotes/ka;->a(Lcom/coremobility/l/an;)V

    goto/16 :goto_10

    :cond_281
    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->l()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v11

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->n()[I

    move-result-object v12

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->p()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->o()[I

    move-result-object v14

    array-length v2, v10

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    array-length v2, v11

    add-int/lit8 v2, v2, 0x1

    new-array v6, v2, [I

    array-length v2, v12

    add-int/lit8 v2, v2, 0x1

    new-array v4, v2, [I

    array-length v2, v13

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    array-length v2, v14

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    :goto_2af
    array-length v15, v10

    if-ge v7, v15, :cond_2b9

    aget-object v15, v10, v7

    aput-object v15, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2af

    :cond_2b9
    const/4 v7, 0x0

    :goto_2ba
    array-length v15, v11

    if-ge v7, v15, :cond_2c4

    aget v15, v11, v7

    aput v15, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2ba

    :cond_2c4
    const/4 v7, 0x0

    :goto_2c5
    array-length v15, v12

    if-ge v7, v15, :cond_2cf

    aget v15, v12, v7

    aput v15, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c5

    :cond_2cf
    const/4 v7, 0x0

    :goto_2d0
    array-length v15, v13

    if-ge v7, v15, :cond_2da

    aget-object v15, v13, v7

    aput-object v15, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d0

    :cond_2da
    const/4 v7, 0x0

    :goto_2db
    array-length v15, v14

    if-ge v7, v15, :cond_2e5

    aget v15, v14, v7

    aput v15, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2db

    :cond_2e5
    array-length v7, v10

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v7

    array-length v7, v11

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v6, v7

    array-length v7, v12

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->w()I

    move-result v10

    aput v10, v4, v7

    array-length v7, v13

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->y()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v7

    array-length v7, v14

    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->x()I

    move-result v10

    aput v10, v2, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_24d

    :cond_310
    invoke-virtual/range {p1 .. p1}, Lcom/coremobility/k/de;->z()Lcom/coremobility/l/an;

    move-result-object v2

    goto/16 :goto_266

    :sswitch_316
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/ka;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    goto/16 :goto_10

    :sswitch_332
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/ka;

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34d
    .catchall {:try_start_109 .. :try_end_34d} :catchall_fd
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_34d} :catch_dd

    goto/16 :goto_10

    :cond_34f
    move-object v2, v9

    goto/16 :goto_261

    :cond_352
    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    goto/16 :goto_245

    :cond_359
    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    goto/16 :goto_18f

    nop

    :sswitch_data_362
    .sparse-switch
        0x64 -> :sswitch_18
        0x65 -> :sswitch_332
        0x6f -> :sswitch_316
        0x78 -> :sswitch_1b4
    .end sparse-switch
.end method

.method private static a(Lcom/coremobility/k/de;Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x0

    if-nez p0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/coremobility/k/de;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/coremobility/k/de;->a()J

    move-result-wide v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-wide/32 v5, 0x40000

    or-long/2addr v1, v5

    const-string v5, "status"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "setNotification user update is started"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->l:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "setNotification user update is ended"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public static a(Lcom/coremobility/k/dg;)V
    .registers 4

    if-eqz p0, :cond_13

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_17

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/kd;->b:Ljava/lang/String;

    iget v0, v0, Lcom/coremobility/app/vnotes/kd;->e:I

    invoke-static {v1, v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 6

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v1, 0x3702

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    const/16 v1, 0x3650

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/integration/a/a;->a(II)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.LONG"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v1, "com.coremobility.app.vnotes.VTTPOSTGREET"

    invoke-static {v1, v0}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    const-string v0, "com.coremobility.app.vnotes.VTTSUBSCRIBEREQUEST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.VTTSUBSCRIBEREQUEST"

    invoke-static {v0, p1, v1}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v0, "com.coremobility.app.vnotes.VTTUNSUBSCRIBEREQUES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.VTTUNSUBSCRIBEREQUES"

    invoke-static {v0, p1, v1}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    goto :goto_11

    :cond_23
    const-string v0, "com.coremobility.app.vnotes.VTTPOSTGREET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.coremobility.app.vnotes.SETSUBSCRIBERPREFERENCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.SETSUBSCRIBERPREFERENCE"

    invoke-static {v0, p2}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11

    :cond_3c
    const-string v0, "com.coremobility.app.vnotes.SENDDATACONSENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v0, "com.coremobility.app.vnotes.SENDDATACONSENT"

    invoke-static {v0, p2}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/4 v2, 0x6

    const/4 v4, 0x0

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_82

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    if-eqz v0, :cond_19

    if-eqz p0, :cond_10

    iput-object p0, v0, Lcom/coremobility/app/vnotes/kd;->b:Ljava/lang/String;

    :cond_10
    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    iput p1, v0, Lcom/coremobility/app/vnotes/kd;->e:I

    :cond_15
    if-eqz p2, :cond_19

    iput-object p2, v0, Lcom/coremobility/app/vnotes/kd;->a:Ljava/lang/String;

    :cond_19
    const-string v0, "Saving autoforward preferences"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoforward email = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "archive mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.coremobility.app.vnotes.LONG"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "com.coremobility.app.vnotes.STRING2"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.coremobility.app.vnotes.SETSUBSCRIBERPREFERENCE"

    invoke-static {v1, v4, v0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_82
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_twitter_auth_access_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_twitter_auth_token_secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_twitter_user_screen_name"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    iput-boolean p0, v0, Lcom/coremobility/app/vnotes/cf;->an:Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.BOOLEAN"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.BOOLEAN"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.coremobility.app.vnotes.SENDDATACONSENT"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method public static a(ZZZ)V
    .registers 15

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_vtt_notification_mode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    const/4 v1, 0x0

    const v3, 0x7f0c0269

    const v2, 0x7f0c026a

    const v0, 0x7f0c0262

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v9

    sget-boolean v4, Lcom/coremobility/a/b;->c:Z

    if-eqz v4, :cond_206

    const v3, 0x7f0c0263

    const v2, 0x7f0c026b

    const v0, 0x7f0c0263

    move v5, v0

    move v6, v2

    move v8, v3

    :goto_30
    if-nez p1, :cond_36

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    :cond_36
    if-lez v9, :cond_1f6

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/coremobility/k/de;

    invoke-static {v7}, Lcom/coremobility/app/vnotes/cq;->b(Lcom/coremobility/k/de;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_53
    if-eqz v3, :cond_e3

    const-string v0, "unknown@"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v2, 0x7f0c000d

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    move-object v4, v0

    :goto_69
    const/4 v0, 0x1

    if-ne v9, v0, :cond_19e

    if-nez p1, :cond_82

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c025d

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_82
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0, v5}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_133

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b3
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v4, 0x7f0c0264

    invoke-virtual {v2, v4}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    :goto_c7
    const/4 v0, 0x1

    const v1, 0x108007e

    invoke-virtual {v7}, Lcom/coremobility/k/de;->g()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v7}, Lcom/coremobility/k/de;->d()J

    move-result-wide v7

    if-nez p1, :cond_1f0

    const/4 v10, 0x1

    :goto_d7
    if-nez p1, :cond_1f3

    const/4 v11, 0x1

    :goto_da
    move v9, p0

    invoke-static/range {v0 .. v11}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JJZZZ)V

    :goto_de
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto/16 :goto_f

    :cond_e3
    if-nez v2, :cond_203

    invoke-static {v7}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/k/de;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ff

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_11a

    new-instance v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v3

    goto/16 :goto_69

    :cond_11a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1ff

    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v3

    goto/16 :goto_69

    :cond_133
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v5, "window"

    invoke-virtual {v0, v5}, Lcom/coremobility/integration/app/CM_App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    mul-int/lit8 v5, v5, 0x4

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2, v0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;F)I

    move-result v6

    if-le v6, v5, :cond_1fc

    invoke-static {v2, v5, v0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;IF)Ljava/lang/String;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_163
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b3

    :cond_19b
    const-string v2, ""

    goto :goto_182

    :cond_19e
    if-nez p1, :cond_1b9

    if-eqz p2, :cond_1dc

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0268

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1b9
    :goto_1b9
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0, v6}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    goto/16 :goto_c7

    :cond_1dc
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c025d

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b9

    :cond_1f0
    const/4 v10, 0x0

    goto/16 :goto_d7

    :cond_1f3
    const/4 v11, 0x0

    goto/16 :goto_da

    :cond_1f6
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    goto/16 :goto_de

    :cond_1fc
    move-object v0, v2

    goto/16 :goto_163

    :cond_1ff
    move-object v2, v0

    move-object v4, v3

    goto/16 :goto_69

    :cond_203
    move-object v4, v3

    goto/16 :goto_69

    :cond_206
    move v5, v0

    move v6, v2

    move v8, v3

    goto/16 :goto_30
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_speakerphone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/cf;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/cf;->T:Z

    return p1
.end method

.method public static aa()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public static ab()I
    .registers 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->j()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_11

    const/16 v0, 0x64

    :goto_10
    return v0

    :cond_11
    if-ne v0, v1, :cond_16

    const/16 v0, 0x6c

    goto :goto_10

    :cond_16
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public static ac()Z
    .registers 2

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static ad()Ljava/lang/String;
    .registers 2

    sget v0, Lcom/coremobility/a/b;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    sget v0, Lcom/coremobility/a/b;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    sget v0, Lcom/coremobility/a/b;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    :cond_f
    sget-boolean v0, Lcom/coremobility/a/b;->e:Z

    if-eqz v0, :cond_16

    const-string v0, "https://upgradeserver.coremobility.com/prod/sprint/webhelp/Advanced/Default.htm"

    :goto_15
    return-object v0

    :cond_16
    const-string v0, "https://upgradeserver-test.coremobility.com/eng/sprint/webhelp/Advanced/Default.htm"

    goto :goto_15

    :cond_19
    const-string v0, "http://www.smithmicro.com"

    goto :goto_15
.end method

.method static synthetic ae()Lcom/coremobility/integration/app/CM_App;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    return-object v0
.end method

.method private af()V
    .registers 3

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ah()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_16

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->i(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_16
    return-void
.end method

.method private ag()V
    .registers 5

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v2

    :goto_10
    if-ge v1, v3, :cond_20

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iput v2, v0, Lcom/coremobility/app/vnotes/jy;->c:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_20
    return-void
.end method

.method private ah()V
    .registers 7

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ag()V

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->r:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    const-string v3, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0 AND (status & 2 == 0 )"

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_22
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/cf;->l(I)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_22

    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_33
    return-void
.end method

.method private ai()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/cf;->f(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cf;->g(Ljava/lang/String;)V

    return-void
.end method

.method private static aj()V
    .registers 4

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    :goto_11
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Notification Broadcast Intent: unreadCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.coremobility.app.vnotes.intent.action.MESSAGE_COUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "unread_msg_cnt"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_3d
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_11
.end method

.method private ak()V
    .registers 13

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->g:Z

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_15
    new-instance v3, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasTrial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " inTrial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numPlans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    const v1, 0x108007e

    const-string v2, "DEBUG: Subscription info updated."

    move-wide v7, v5

    move v10, v9

    move v11, v9

    invoke-static/range {v0 .. v11}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JJZZZ)V

    :cond_75
    return-void

    :cond_76
    move v0, v9

    goto :goto_15
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/cf;I)I
    .registers 2

    iput p1, p0, Lcom/coremobility/app/vnotes/cf;->W:I

    return p1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smvvm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [B

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rws"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8f} :catch_92

    move-result-object v0

    goto/16 :goto_7

    :catch_92
    move-exception v1

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyToSdcard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7
.end method

.method public static b()Lcom/coremobility/app/vnotes/kb;
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->ao:Lcom/coremobility/app/vnotes/kb;

    if-nez v0, :cond_14

    new-instance v0, Lcom/coremobility/app/vnotes/kb;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/kb;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->ao:Lcom/coremobility/app/vnotes/kb;

    const/4 v0, 0x6

    const-string v1, "CachedVttSubscription created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->ao:Lcom/coremobility/app/vnotes/kb;

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Ljava/lang/String;
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Vector;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_6
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    if-nez v1, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    :goto_18
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_6

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/jy;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_3e
    move-object v2, v1

    :cond_3f
    return-object v2
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/cf;)V
    .registers 5

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aa:Lcom/coremobility/app/vnotes/cl;

    if-eqz v1, :cond_12

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coremobility/app/vnotes/cf;->aa:Lcom/coremobility/app/vnotes/cl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_12
    return-void
.end method

.method public static b(Lcom/coremobility/k/dg;)V
    .registers 4

    if-eqz p0, :cond_18

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_18

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_19

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_18
    return-void

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_application_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(ZLandroid/content/Context;)V
    .registers 14

    const-wide/16 v7, 0x0

    const/4 v0, 0x3

    const/4 v9, 0x0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    const v1, 0x7f0c026e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/coremobility/integration/i/f;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_48

    const v1, 0x7f0c0270

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0c026d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_24
    const v1, 0x108007e

    if-eqz p0, :cond_46

    const-wide/16 v5, 0x1

    :goto_2b
    move v10, v9

    move v11, v9

    invoke-static/range {v0 .. v11}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JJZZZ)V

    return-void

    :cond_31
    invoke-static {}, Lcom/coremobility/integration/i/f;->d()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_48

    const v1, 0x7f0c026f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0c026c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_46
    move-wide v5, v7

    goto :goto_2b

    :cond_48
    move-object v2, v4

    goto :goto_24
.end method

.method public static b(I)Z
    .registers 2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_contact_pictures"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/cf;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/cf;->V:Z

    return p1
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/cf;I)I
    .registers 2

    iput p1, p0, Lcom/coremobility/app/vnotes/cf;->X:I

    return p1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_transcription_font"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    return-object p1
.end method

.method public static c(I)V
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static c(Lcom/coremobility/k/de;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/k/de;->a()J

    move-result-wide v1

    const-wide/32 v3, 0x40000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_18
    if-ge v1, v2, :cond_10

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p0, v3, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "vtt_expiry_notice@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/coremobility/app/vnotes/cf;->ad:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/cf;Ljava/util/Vector;)Ljava/util/Vector;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    return-object p1
.end method

.method public static d(I)V
    .registers 3

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    iget-object v1, v0, Lcom/coremobility/app/vnotes/kd;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/kd;->a:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_transcriptions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/util/HashMap;
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->as:Ljava/util/HashMap;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->as:Ljava/util/HashMap;

    const/4 v0, 0x6

    const-string v1, "Contact cache created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->as:Ljava/util/HashMap;

    return-object v0
.end method

.method public static e(I)V
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_show_vtt_confirm_unsub"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x6

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrementUnreadCountForLine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    if-eqz v0, :cond_5f

    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v2

    :goto_2b
    if-ge v1, v3, :cond_5f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v4, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decrement unread count for line index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v4, v0, Lcom/coremobility/app/vnotes/jy;->c:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lcom/coremobility/app/vnotes/jy;->c:I

    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    :cond_5f
    return-void
.end method

.method public static e(Z)V
    .registers 7

    const/4 v5, 0x6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHeadsetNotificationSound = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_1a
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notificationSound"

    if-eqz p0, :cond_4f

    const/4 v0, 0x1

    :goto_25
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notificationSound"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableHeadsetNotificationSound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4e} :catch_51

    :goto_4e
    return-void

    :cond_4f
    move v0, v1

    goto :goto_25

    :catch_51
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_hide_subscription_button"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_from_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/util/HashMap;
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->at:Ljava/util/HashMap;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->at:Ljava/util/HashMap;

    const/4 v0, 0x6

    const-string v1, "Contact to vnote ID map created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->at:Ljava/util/HashMap;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_inbox_filter_line_addr"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "preference_num_shared_lines"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method private f(Z)V
    .registers 5

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ab:Landroid/app/Activity;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ab:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz p1, :cond_32

    const/high16 v0, 0x3f80

    :goto_2c
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_31
    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public static f(I)Z
    .registers 4

    const-string v1, ""

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "vtt_expiry_notice@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_33
    const/4 v0, 0x0

    goto :goto_25

    :cond_35
    move-object v0, v1

    goto :goto_16
.end method

.method public static g(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_vtt_notification_mode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static g()Lcom/coremobility/app/vnotes/bk;
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->au:Lcom/coremobility/app/vnotes/bk;

    if-nez v0, :cond_14

    new-instance v0, Lcom/coremobility/app/vnotes/bk;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/bk;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->au:Lcom/coremobility/app/vnotes/bk;

    const/4 v0, 0x6

    const-string v1, "Inbox comparator created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->au:Lcom/coremobility/app/vnotes/bk;

    return-object v0
.end method

.method public static g(I)V
    .registers 4

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_vtt_prov_pending_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVttProvisionPendingToPreference: state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_inbox_filter_line_name"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const-string v0, ""

    goto :goto_4

    :cond_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static h()Ljava/util/HashMap;
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->av:Ljava/util/HashMap;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->av:Ljava/util/HashMap;

    const/4 v0, 0x6

    const-string v1, "Contact photo cache created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->av:Ljava/util/HashMap;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_show_optional_upgrade"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static i()Ljava/util/HashMap;
    .registers 3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->aw:Ljava/util/HashMap;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->aw:Ljava/util/HashMap;

    const/4 v0, 0x6

    const-string v1, "VnoteInfo cache created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->aw:Ljava/util/HashMap;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public static j()Lcom/coremobility/app/vnotes/da;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->ax:Lcom/coremobility/app/vnotes/da;

    if-nez v0, :cond_b

    new-instance v0, Lcom/coremobility/app/vnotes/da;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/da;-><init>()V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->ax:Lcom/coremobility/app/vnotes/da;

    :cond_b
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->ax:Lcom/coremobility/app/vnotes/da;

    return-object v0
.end method

.method public static j(I)V
    .registers 5

    const v2, 0x7f0c0289

    const/16 v0, 0x64

    if-ne p0, v0, :cond_1c

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v3, 0x7f0c028b

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const/16 v0, 0x65

    if-ne p0, v0, :cond_1b

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v3, 0x7f0c028a

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public static j(Landroid/content/Context;)V
    .registers 7

    const v5, 0x7f0c00b2

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preference_show_vtt_prov_alert"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    :pswitch_28
    goto :goto_a

    :pswitch_29
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    :goto_33
    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    if-eqz v0, :cond_55

    const v2, 0x7f0c00b4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3e
    if-eqz v0, :cond_5c

    const v0, 0x7f0c00b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-static {v4, v2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_show_vtt_prov_alert"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_a

    :cond_53
    move v0, v1

    goto :goto_33

    :cond_55
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2, v5}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    :cond_5c
    const v0, 0x7f0c00b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :pswitch_64
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2, v5}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0c00bb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preference_show_vtt_prov_alert"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_a

    nop

    :pswitch_data_80
    .packed-switch 0x6
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_64
    .end packed-switch
.end method

.method public static k()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->ay:Ljava/lang/String;

    if-nez v0, :cond_26

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_29

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->ay:Ljava/lang/String;

    :cond_1e
    :goto_1e
    const/4 v0, 0x6

    const-string v1, "Area code created"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->ay:Ljava/lang/String;

    return-object v0

    :cond_29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1e

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->ay:Ljava/lang/String;

    goto :goto_1e
.end method

.method private k(I)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x0

    const-string v0, "canceling Notification timer for vnote ID %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/co;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_26
    if-ltz v2, :cond_3f

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/k/de;

    invoke-virtual {v1}, Lcom/coremobility/k/de;->g()I

    move-result v1

    if-ne p1, v1, :cond_3b

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_3b
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_26

    :cond_3f
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/co;->cancel()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->P:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timer removed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_50
    return-void
.end method

.method public static l()Lcom/coremobility/app/customui/o;
    .registers 2

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->az:Lcom/coremobility/app/customui/o;

    if-nez v0, :cond_d

    new-instance v0, Lcom/coremobility/app/customui/o;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-direct {v0, v1}, Lcom/coremobility/app/customui/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->az:Lcom/coremobility/app/customui/o;

    :cond_d
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->az:Lcom/coremobility/app/customui/o;

    return-object v0
.end method

.method private l(I)V
    .registers 10

    const/4 v7, 0x6

    const/4 v2, 0x0

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    if-eqz v0, :cond_75

    if-lez p1, :cond_75

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incrementUnreadCountForLine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    if-eqz v0, :cond_75

    if-eqz v3, :cond_75

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v1, v2

    :goto_41
    if-ge v1, v4, :cond_75

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/jy;

    iget-object v5, v0, Lcom/coremobility/app/vnotes/jy;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_71

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "increment unread count for line index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v7, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v5, v0, Lcom/coremobility/app/vnotes/jy;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/coremobility/app/vnotes/jy;->c:I

    :cond_71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    :cond_75
    return-void
.end method

.method private static m(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_inbox_filter_line_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, p0, :cond_1f

    :try_start_19
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_1f
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_24

    move-result-object v0

    :cond_23
    :goto_23
    return-object v0

    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public static m()Ljava/util/Vector;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    return-object v0
.end method

.method public static n()Ljava/util/Vector;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    return-object v0
.end method

.method private n(I)V
    .registers 11

    const/4 v7, 0x5

    const/4 v4, 0x4

    const/4 v8, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v3

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    packed-switch p1, :pswitch_data_154

    :cond_12
    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    iget-object v3, v3, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    const-string v0, "preference_vtt_prov_pending_mode"

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_20

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4f

    :cond_20
    move v0, v1

    :goto_21
    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "preference_show_vtt_prov_alert"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "preference_vtt_prov_pending_mode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activated Trial/subscription Toast enabled: UI state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_4f
    move v0, v2

    goto :goto_21

    :pswitch_51
    iget-object v3, v3, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    const-string v0, "preference_vtt_prov_pending_mode"

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_8a

    move v0, v1

    :goto_5c
    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "preference_show_vtt_prov_alert"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "preference_vtt_prov_pending_mode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activated Trial/subscription Toast enabled: UI state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_8a
    move v0, v2

    goto :goto_5c

    :pswitch_8c
    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v0

    if-eqz v0, :cond_11f

    move v0, v1

    :goto_9e
    const-string v6, "preference_show_what_is_voicemail"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v4, :cond_12

    iget-object v4, v3, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v4, :cond_151

    iget-object v4, v3, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget v4, v4, Lcom/coremobility/app/vnotes/ke;->c:I

    if-eq v4, v1, :cond_b6

    iget-object v3, v3, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget v3, v3, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v3, :cond_122

    :cond_b6
    move v3, v1

    :goto_b7
    const-string v4, "preference_vtt_prov_pending_mode"

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_c3

    const/16 v7, 0xe

    if-ne v4, v7, :cond_124

    :cond_c3
    move v4, v1

    :goto_c4
    if-eqz v3, :cond_f1

    if-eqz v4, :cond_f1

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preference_show_vtt_prov_alert"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "preference_vtt_prov_pending_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deactivated subscription Toast enabled: UI state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f1
    if-eqz v6, :cond_12

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->Z:Z

    if-nez v0, :cond_12

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "preference_show_what_is_voicemail"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "What is Voicemail dialog enabled: UI state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_11f
    move v0, v2

    goto/16 :goto_9e

    :cond_122
    move v3, v2

    goto :goto_b7

    :cond_124
    move v4, v2

    goto :goto_c4

    :pswitch_126
    iget-object v3, v3, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    const-string v0, "preference_vtt_prov_pending_mode"

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_14f

    move v0, v1

    :goto_131
    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "preference_show_unsub_end_of_month"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "preference_vtt_prov_pending_mode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "Delayed Unsubscribed dialog is enabled: "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_14f
    move v0, v2

    goto :goto_131

    :cond_151
    move v3, v2

    goto/16 :goto_b7

    :pswitch_data_154
    .packed-switch 0x2
        :pswitch_8c
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_8c
        :pswitch_12
        :pswitch_51
        :pswitch_126
    .end packed-switch
.end method

.method private static o(I)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_14c

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :sswitch_7
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c022c

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :sswitch_1d
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c02b5

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->B()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :sswitch_3a
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c022d

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :sswitch_50
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c02bf

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :sswitch_66
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c022e

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :sswitch_7c
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c022f

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_93
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0230

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_aa
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0231

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_c1
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0232

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_d8
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0233

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_ef
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0234

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_106
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0235

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_11d
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0236

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :sswitch_134
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v1, 0x7f0c0237

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    nop

    :sswitch_data_14c
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_1d
        0x6 -> :sswitch_3a
        0x7 -> :sswitch_50
        0x8 -> :sswitch_7
        0x1e -> :sswitch_7
        0x2a -> :sswitch_66
        0x88 -> :sswitch_7c
        0xe0 -> :sswitch_93
        0xe1 -> :sswitch_aa
        0xe2 -> :sswitch_c1
        0xe3 -> :sswitch_d8
        0xe5 -> :sswitch_ef
        0x191 -> :sswitch_106
        0x1f7 -> :sswitch_11d
        0x3e8 -> :sswitch_134
        0x3e9 -> :sswitch_134
        0x3ea -> :sswitch_134
        0x3eb -> :sswitch_134
    .end sparse-switch
.end method

.method public static p()Lcom/coremobility/app/vnotes/cf;
    .registers 1

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    return-object v0
.end method

.method public static z()V
    .registers 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    return-void
.end method


# virtual methods
.method public final D()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->T:Z

    return v0
.end method

.method public final E()V
    .registers 4

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_speakerphone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->T:Z

    return-void
.end method

.method public final F()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->V:Z

    return v0
.end method

.method public final M()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/cf;->b(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final P()I
    .registers 2

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/g;)I

    move-result v0

    return v0
.end method

.method public final S()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->Z:Z

    return v0
.end method

.method public final T()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->Z:Z

    return-void
.end method

.method public final W()I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/cf;->W:I

    return v0
.end method

.method public final X()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/cf;->W:I

    return-void
.end method

.method public final Y()V
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/cf;->W:I

    return-void
.end method

.method public final Z()I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/cf;->X:I

    return v0
.end method

.method public final a(Landroid/app/Activity;)I
    .registers 3

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/h;Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public final a()Lcom/coremobility/integration/b;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ae:Lcom/coremobility/integration/b;

    return-object v0
.end method

.method public final a(I)V
    .registers 5

    iget v0, p0, Lcom/coremobility/app/vnotes/cf;->am:I

    if-eq v0, p1, :cond_1e

    iput p1, p0, Lcom/coremobility/app/vnotes/cf;->am:I

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preference_inbox_sort_order"

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->am:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1e
    return-void
.end method

.method public final a(III)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->j:Lcom/coremobility/app/vnotes/cn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coremobility/app/vnotes/cn;->a(III)V

    return-void
.end method

.method public final a(IZ)V
    .registers 6

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_22

    if-eqz p2, :cond_29

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->c(J)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_22
    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/cf;->e(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v0

    if-eqz v0, :cond_29

    if-eqz p2, :cond_40

    if-eqz p2, :cond_29

    invoke-virtual {v0}, Lcom/coremobility/k/de;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->c(J)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_40
    invoke-virtual {v0}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/cf;->e(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public final a(IZZ)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_9

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/cf;->k(I)V

    move v3, v2

    :goto_13
    if-ge v3, v4, :cond_37

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/k/de;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/coremobility/k/de;->g()I

    move-result v0

    if-ne p1, v0, :cond_33

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2b
    if-eqz p2, :cond_8

    if-eqz v0, :cond_8

    invoke-static {v2, v1, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    goto :goto_8

    :cond_33
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    :cond_37
    move v0, v2

    goto :goto_2b
.end method

.method public final a(Landroid/app/Activity;I)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cf;->ab:Landroid/app/Activity;

    iput p2, p0, Lcom/coremobility/app/vnotes/cf;->ac:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 11

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->Q:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->Q:Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-lez v1, :cond_11b

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ag()V

    :goto_28
    invoke-static {p1}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/database/Cursor;)Lcom/coremobility/k/de;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Lcom/coremobility/k/de;->b()[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-virtual {v1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v5

    long-to-int v5, v5

    const/16 v6, 0x64

    invoke-virtual {v1}, Lcom/coremobility/k/de;->g()I

    move-result v7

    int-to-long v7, v7

    invoke-direct {p0, v1, v6, v7, v8}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    int-to-long v5, v5

    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_6c

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6c

    add-int/lit8 v2, v2, 0x1

    sget-boolean v3, Lcom/coremobility/app/vnotes/cf;->M:Z

    if-nez v3, :cond_65

    invoke-virtual {v1}, Lcom/coremobility/k/de;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10c

    move-object v0, v1

    :cond_65
    :goto_65
    invoke-virtual {v1}, Lcom/coremobility/k/de;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/cf;->l(I)V

    :cond_6c
    move v1, v2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_120

    if-lez v1, :cond_113

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;Lcom/coremobility/k/de;)V

    :goto_80
    const/4 v0, 0x6

    const-string v1, "loadMimeTranscriptionInfo query executed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "file_type=2"

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->n:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/cq;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v0, 0x6

    const-string v2, "loadMimeTranscriptionInfo query executed query finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    if-eqz v1, :cond_107

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_107

    :cond_ae
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Lcom/coremobility/k/de;

    invoke-direct {v3}, Lcom/coremobility/k/de;-><init>()V

    invoke-virtual {v3, v2}, Lcom/coremobility/k/de;->a(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_118

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->m()Ljava/lang/String;

    move-result-object v0

    :goto_cf
    invoke-virtual {v3, v0}, Lcom/coremobility/k/de;->n(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/coremobility/k/de;->c(J)V

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/coremobility/k/de;->c(I)V

    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/coremobility/k/de;->d(I)V

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coremobility/k/de;->p(Ljava/lang/String;)V

    const/16 v0, 0x78

    int-to-long v4, v2

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_ae

    :cond_107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_10c
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_65

    :cond_113
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto/16 :goto_80

    :cond_118
    const-string v0, ""

    goto :goto_cf

    :cond_11b
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto/16 :goto_3

    :cond_120
    move v2, v1

    goto/16 :goto_28
.end method

.method public final a(Lcom/coremobility/app/vnotes/bm;)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1b

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->ah:Z

    if-nez v0, :cond_17

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_34

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    :cond_34
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->ai:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->ah:Z

    goto :goto_17
.end method

.method public final a(Lcom/coremobility/integration/i/e;)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1b

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public final a(Lcom/coremobility/integration/i/g;)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1b

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public final a(Lcom/coremobility/integration/i/h;)V
    .registers 5

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1b

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public final a(Lcom/coremobility/integration/i/l;I)V
    .registers 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aD:Landroid/os/Handler;

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aD:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aD:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    sget-wide v3, Lcom/coremobility/integration/app/CM_App;->a:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    sget-wide v5, Lcom/coremobility/integration/app/CM_App;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aD:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_3c
    if-nez p2, :cond_7e

    iget-boolean v1, p1, Lcom/coremobility/integration/i/l;->g:Z

    if-eqz v1, :cond_7e

    iget v1, p1, Lcom/coremobility/integration/i/l;->f:I

    if-nez v1, :cond_a8

    move v1, v2

    :goto_47
    if-eqz v1, :cond_b5

    iget-object v1, p1, Lcom/coremobility/integration/i/l;->h:[I

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "preference_dontshow_upgrade_selection"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "preference_dontshow_upgrade_version"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_aa

    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    invoke-static {v4}, Lcom/coremobility/integration/i/f;->a(Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coremobility/integration/i/f;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_7e

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;ZZ)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2, v1}, Lcom/coremobility/app/vnotes/cf;->b(ZLandroid/content/Context;)V

    :cond_7e
    :goto_7e
    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    invoke-static {}, Lcom/coremobility/integration/i/f;->f()V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_8f
    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/i/e;

    invoke-interface {v0, p1, p2}, Lcom/coremobility/integration/i/e;->a(Lcom/coremobility/integration/i/l;I)V

    :cond_a4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8f

    :cond_a8
    move v1, v0

    goto :goto_47

    :cond_aa
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1, v2, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;ZZ)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2, v1}, Lcom/coremobility/app/vnotes/cf;->b(ZLandroid/content/Context;)V

    goto :goto_7e

    :cond_b5
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cf;->b(ZLandroid/content/Context;)V

    goto :goto_7e
.end method

.method public final a(Lcom/coremobility/k/de;)V
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    :cond_f
    const/16 v0, 0x64

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    invoke-virtual {p1, v3}, Lcom/coremobility/k/de;->a(Ljava/lang/String;)V

    const/16 v0, 0x78

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->f()V

    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x1000

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-lez v0, :cond_35

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-nez v0, :cond_79

    move v0, v1

    :goto_41
    invoke-virtual {p1}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    :goto_4b
    if-eqz v2, :cond_7d

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v2

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->f(I)Z

    move-result v2

    :goto_55
    if-nez v2, :cond_6c

    if-nez v0, :cond_6c

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "preference_vibration"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/cf;->U:Z

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/cf;->U:Z

    invoke-virtual {p0, p1, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Z)V

    :cond_6c
    if-eqz v2, :cond_7f

    if-nez v0, :cond_7f

    :goto_70
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;Lcom/coremobility/k/de;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto :goto_34

    :cond_79
    move v0, v2

    goto :goto_41

    :cond_7b
    move v2, v1

    goto :goto_4b

    :cond_7d
    move v2, v1

    goto :goto_55

    :cond_7f
    move-object p1, v3

    goto :goto_70
.end method

.method public final a(Lcom/coremobility/k/de;Z)V
    .registers 12

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_vtt_notification_mode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    and-long/2addr v4, v2

    const-wide/32 v6, 0x200000

    cmp-long v4, v4, v6

    if-eqz v4, :cond_28

    const-wide/32 v4, 0x100000

    and-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-nez v2, :cond_2a

    :cond_28
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_2a
    packed-switch v1, :pswitch_data_13e

    :cond_2d
    :goto_2d
    return-void

    :pswitch_2e
    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {p1, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Landroid/content/Context;)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    goto :goto_2d

    :pswitch_3d
    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_ad

    const/4 v0, 0x1

    move v1, v0

    :goto_4c
    invoke-static {p1}, Lcom/coremobility/app/vnotes/cf;->c(Lcom/coremobility/k/de;)Z

    move-result v4

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v3

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_b0

    const/4 v3, 0x1

    :goto_73
    if-eqz v3, :cond_13a

    const-wide/32 v5, 0x8000

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v7

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_13a

    const/4 v0, 0x1

    :goto_84
    move v2, v0

    :cond_85
    :goto_85
    invoke-virtual {p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_dc

    const/4 v0, 0x1

    :goto_90
    if-nez v4, :cond_2d

    if-eqz v1, :cond_129

    if-eqz v0, :cond_de

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/cf;->k(I)V

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {p1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    goto :goto_2d

    :cond_ad
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4c

    :cond_b0
    const/4 v3, 0x0

    goto :goto_73

    :cond_b2
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v3

    if-eqz v3, :cond_85

    invoke-virtual {v3}, Lcom/coremobility/k/de;->a()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_da

    const/4 v0, 0x1

    :goto_c8
    if-eqz v0, :cond_85

    const-wide/32 v5, 0x8000

    invoke-virtual {v3}, Lcom/coremobility/k/de;->a()J

    move-result-wide v7

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_85

    const/4 v2, 0x1

    goto :goto_85

    :cond_da
    const/4 v0, 0x0

    goto :goto_c8

    :cond_dc
    const/4 v0, 0x0

    goto :goto_90

    :cond_de
    invoke-virtual {p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v0

    if-eqz v0, :cond_129

    if-eqz v2, :cond_129

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->O:Ljava/util/Timer;

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v0

    const/4 v1, 0x6

    const-string v2, "starting %dms Notification timer for vnote ID %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/coremobility/app/vnotes/cf;->F:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/app/vnotes/co;

    invoke-direct {v1, p0, v0}, Lcom/coremobility/app/vnotes/co;-><init>(Lcom/coremobility/app/vnotes/cf;I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->P:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->O:Ljava/util/Timer;

    sget v2, Lcom/coremobility/app/vnotes/cf;->F:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    :cond_129
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {p1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    goto/16 :goto_2d

    :cond_13a
    move v0, v2

    goto/16 :goto_84

    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2e
        :pswitch_3d
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/cf;->an:Z

    return-void
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .registers 21

    sget-wide v2, Lcom/coremobility/integration/app/CM_App;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget-wide v4, Lcom/coremobility/integration/app/CM_App;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_33

    sget-object v2, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v2}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->what:I

    move-wide/from16 v0, p2

    long-to-int v3, v0

    iput v3, v2, Landroid/os/Message;->arg1:I

    move-wide/from16 v0, p4

    long-to-int v3, v0

    iput v3, v2, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p6

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v3, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v3, v2}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    :goto_32
    return v2

    :cond_33
    const/16 v2, 0x74

    if-ne p1, v2, :cond_4f

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->ap:Lcom/coremobility/app/vnotes/cp;

    move-wide/from16 v0, p2

    long-to-int v3, v0

    iput v3, v2, Lcom/coremobility/app/vnotes/cp;->a:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->ap:Lcom/coremobility/app/vnotes/cp;

    move-wide/from16 v0, p4

    long-to-int v3, v0

    iput v3, v2, Lcom/coremobility/app/vnotes/cp;->b:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->ap:Lcom/coremobility/app/vnotes/cp;

    check-cast p6, Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v2, Lcom/coremobility/app/vnotes/cp;->d:Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_32

    :cond_4f
    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-nez v2, :cond_5d

    const/16 v2, 0x7c

    if-eq p1, v2, :cond_5b

    const/16 v2, 0x7d

    if-ne p1, v2, :cond_5d

    :cond_5b
    const/4 v2, 0x1

    goto :goto_32

    :cond_5d
    packed-switch p1, :pswitch_data_b1e

    :cond_60
    :goto_60
    :pswitch_60
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v2, 0x0

    move v9, v2

    :goto_68
    if-ge v9, v10, :cond_b17

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b12

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->I:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/k/dg;

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/coremobility/k/dg;->a(IJJLjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b12

    const/4 v2, 0x1

    goto :goto_32

    :pswitch_89
    const/4 v2, 0x6

    const-string v3, "VN_EVENT_VNOTE_SERVICE_INITIALIZED"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->J:Z

    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v2, :cond_60

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/k/cx;->f()Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->af()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ai()V

    goto :goto_60

    :pswitch_aa
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VN_EVENT_SHARED_LINE_ADDED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v0, p2

    long-to-int v3, v0

    move-object/from16 v2, p6

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/cf;->f(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->i(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ah()V

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_60

    :pswitch_102
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VN_EVENT_SHARED_LINE_REMOVED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, p6

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ai()V

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_60

    :pswitch_14b
    const/4 v2, 0x6

    const-string v3, "VN_EVENT_TIME_CHANGED"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_154
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_16f

    const/4 v2, 0x0

    :goto_165
    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->X:I
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_167} :catch_b1a

    :goto_167
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    goto/16 :goto_60

    :cond_16f
    const/4 v2, 0x1

    goto :goto_165

    :pswitch_171
    const/4 v2, 0x6

    const-string v3, "VN_EVENT_VVMSENDFAILUREADDRCHANGED"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v3

    const-string v4, "preference_send_fail_addr"

    const/16 v5, 0x5100

    invoke-virtual {v3, v5}, Lcom/coremobility/integration/a/a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_60

    :pswitch_198
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATALSENDERR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v0, p2

    long-to-int v2, v0

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->o(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e0

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v3, 0x7f0c022b

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1e0
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_60

    :pswitch_1e7
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATALRECVERR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_60

    :pswitch_211
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATALACKERR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_60

    :pswitch_23b
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHORTSENDDELAY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v0, p2

    long-to-int v2, v0

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v2

    if-lez v2, :cond_60

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29f

    const-string v3, "%d message"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_285
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v4, 0x7f0c0238

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_60

    :cond_29f
    const-string v3, "%d messages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_285

    :cond_2b0
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_60

    :pswitch_2b7
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LONGSENDDELAY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v4, 0x7f0c0239

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_60

    :pswitch_2fd
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VVMPROVFAIL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_337

    const/4 v2, 0x1

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->R:I

    :goto_322
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preference_vnotes_show_prov_alert"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_60

    :cond_337
    const/4 v2, 0x2

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->R:I

    goto :goto_322

    :pswitch_33b
    const-wide/16 v2, 0x3

    cmp-long v2, p2, v2

    if-nez v2, :cond_3ef

    if-eqz p6, :cond_3ef

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEW VNOTE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-ltz v2, :cond_369

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    :cond_369
    move-object/from16 v2, p6

    check-cast v2, Lcom/coremobility/k/de;

    const/16 v3, 0x64

    move-wide/from16 v0, p4

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->f()V

    invoke-virtual {v2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_60

    invoke-virtual {v2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x200

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_394

    const/4 v3, 0x3

    iput v3, p0, Lcom/coremobility/app/vnotes/cf;->R:I

    :cond_394
    move-wide/from16 v0, p4

    long-to-int v3, v0

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->f(I)Z

    move-result v3

    if-nez v3, :cond_3be

    invoke-virtual {v2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3be

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "preference_vibration"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/cf;->U:Z

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/cf;->U:Z

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Z)V

    :cond_3be
    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v2, :cond_3ea

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v2

    if-eqz v2, :cond_3ea

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->r:Landroid/net/Uri;

    sget-object v4, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3ea

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Landroid/database/Cursor;)Z

    :cond_3ea
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto/16 :goto_60

    :cond_3ef
    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_60

    if-eqz p6, :cond_60

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Outbox VNOTE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->i:I

    if-ltz v2, :cond_60

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->i:I

    goto/16 :goto_60

    :pswitch_41f
    const-wide/16 v2, 0x3

    cmp-long v2, p2, v2

    if-nez v2, :cond_60

    if-eqz p6, :cond_60

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUMMARYUPDATED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, p6

    check-cast v2, Lcom/coremobility/k/de;

    const/16 v3, 0x78

    move-wide/from16 v0, p4

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    invoke-virtual {v2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_60

    invoke-virtual {v2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x200

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_46b

    const/4 v3, 0x3

    iput v3, p0, Lcom/coremobility/app/vnotes/cf;->R:I

    :cond_46b
    move-wide/from16 v0, p4

    long-to-int v3, v0

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->f(I)Z

    move-result v3

    if-eqz v3, :cond_4a0

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    move-wide/from16 v0, p4

    long-to-int v3, v0

    if-nez v2, :cond_481

    const/4 v2, 0x0

    :cond_47c
    :goto_47c
    invoke-static {v4, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;Lcom/coremobility/k/de;)V

    goto/16 :goto_60

    :cond_481
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremobility/app/vnotes/ka;

    if-eqz v3, :cond_47c

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/coremobility/k/de;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremobility/k/de;->b(Ljava/lang/String;)V

    goto :goto_47c

    :cond_4a0
    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "preference_vibration"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/cf;->U:Z

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "preference_vtt_notification_mode"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4e4

    invoke-virtual {v2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4e4

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->c(Lcom/coremobility/k/de;)Z

    move-result v3

    if-nez v3, :cond_4e4

    move-wide/from16 v0, p4

    long-to-int v3, v0

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/cf;->k(I)V

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Landroid/content/Context;)V

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/cf;->U:Z

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Z)V

    goto/16 :goto_60

    :cond_4e4
    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->c(Lcom/coremobility/k/de;)Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    goto/16 :goto_60

    :pswitch_4f2
    const-wide/16 v2, 0x3

    cmp-long v2, p2, v2

    if-nez v2, :cond_60

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANGED VNOTE: Param2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, p6

    check-cast v2, Lcom/coremobility/k/de;

    move-wide/from16 v0, p4

    long-to-int v3, v0

    const/16 v4, 0x6f

    move-wide/from16 v0, p4

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/coremobility/app/vnotes/cf;->a(IZZ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto/16 :goto_60

    :pswitch_52c
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VNOTEREMOVED : Param1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Param2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x3

    cmp-long v2, p2, v2

    if-nez v2, :cond_578

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-ltz v2, :cond_578

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    move-wide/from16 v0, p4

    long-to-int v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(IZ)V

    const/4 v2, 0x0

    const/16 v3, 0x65

    move-wide/from16 v0, p4

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto/16 :goto_60

    :cond_578
    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_60

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->i:I

    if-ltz v2, :cond_60

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->i:I

    goto/16 :goto_60

    :pswitch_58a
    const/4 v3, 0x6

    const-string v4, "INBOXFULL %s %d"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0xb

    cmp-long v2, p2, v7

    if-nez v2, :cond_5aa

    const-string v2, "L"

    :goto_599
    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->S:Z

    goto/16 :goto_60

    :cond_5aa
    const-string v2, "S"

    goto :goto_599

    :pswitch_5ad
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTODELETED num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/cf;->S:Z

    goto/16 :goto_60

    :pswitch_5da
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_615

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preference_vnotes_mwi"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_60

    :cond_615
    const/4 v2, 0x2

    const v3, 0x108007e

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v5, 0x7f0c025a

    invoke-virtual {v4, v5}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v6, 0x7f0c025b

    invoke-virtual {v5, v6}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const v7, 0x7f0c025c

    invoke-virtual {v6, v7}, Lcom/coremobility/integration/app/CM_App;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v7, p2

    invoke-static/range {v2 .. v13}, Lcom/coremobility/app/vnotes/cf;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JJZZZ)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preference_vnotes_mwi"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_60

    :pswitch_653
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableVMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_60

    :pswitch_671
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VN_EVENT_VTT_SUBSCRIPTIONINFO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_60

    move-object/from16 v2, p6

    check-cast v2, Lcom/coremobility/l/af;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v5

    iget-object v3, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v3, :cond_78e

    iget-object v3, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget v3, v3, Lcom/coremobility/app/vnotes/ke;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_78e

    const/4 v3, 0x1

    :goto_6a3
    iget-object v4, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v4, :cond_791

    iget-object v4, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget v4, v4, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v4, :cond_791

    const/4 v4, 0x1

    :goto_6ae
    iget v6, v2, Lcom/coremobility/l/af;->a:I

    iget v5, v5, Lcom/coremobility/app/vnotes/kd;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_794

    const/16 v7, 0x8

    if-ne v5, v7, :cond_794

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->e(I)V

    :cond_6bd
    :goto_6bd
    iget v4, v2, Lcom/coremobility/l/af;->a:I

    const/4 v3, 0x1

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v5

    iput v4, v5, Lcom/coremobility/app/vnotes/kd;->c:I

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subscriberInfo.Expiration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/coremobility/l/af;->b:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch v4, :pswitch_data_b74

    :cond_706
    :goto_706
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/coremobility/app/vnotes/kb;->a(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v3

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current UI VTT LifecycleState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/cf;->n(I)V

    if-eqz v2, :cond_785

    iget-object v3, v2, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_785

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preference_show_vtt_sub_error"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "preference_vtt_sub_response_code"

    iget-object v5, v2, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "preference_vtt_sub_psi_error_code"

    iget-object v5, v2, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVTTSubscriptionError  response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Error code :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_785
    iget v2, v2, Lcom/coremobility/l/af;->a:I

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->f:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ak()V

    goto/16 :goto_60

    :cond_78e
    const/4 v3, 0x0

    goto/16 :goto_6a3

    :cond_791
    const/4 v4, 0x0

    goto/16 :goto_6ae

    :cond_794
    const/4 v7, 0x7

    if-eq v6, v7, :cond_79d

    const/4 v7, 0x3

    if-eq v6, v7, :cond_79d

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6bd

    :cond_79d
    const/4 v7, -0x1

    if-eq v5, v7, :cond_6bd

    const/4 v7, 0x7

    if-eq v5, v7, :cond_6bd

    const/4 v7, 0x3

    if-eq v5, v7, :cond_6bd

    const/4 v7, 0x6

    if-eq v5, v7, :cond_6bd

    if-eqz v3, :cond_7b1

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->e(I)V

    goto/16 :goto_6bd

    :cond_7b1
    if-eqz v4, :cond_6bd

    const/4 v3, 0x6

    if-ne v6, v3, :cond_7bc

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->e(I)V

    goto/16 :goto_6bd

    :cond_7bc
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->e(I)V

    goto/16 :goto_6bd

    :pswitch_7c2
    const/4 v3, 0x1

    goto/16 :goto_706

    :pswitch_7c5
    iget-object v4, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v4, :cond_706

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    iget v3, v3, Lcom/coremobility/l/ac;->b:I

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/kb;->b(I)I

    move-result v3

    if-nez v3, :cond_7dc

    const/4 v3, 0x1

    :goto_7d7
    if-eqz v3, :cond_7de

    const/4 v3, 0x3

    goto/16 :goto_706

    :cond_7dc
    const/4 v3, 0x0

    goto :goto_7d7

    :cond_7de
    const/4 v3, 0x4

    goto/16 :goto_706

    :pswitch_7e1
    const/4 v3, 0x5

    goto/16 :goto_706

    :pswitch_7e4
    iget-object v4, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v4, :cond_706

    iget-wide v3, v2, Lcom/coremobility/l/af;->b:J

    iput-wide v3, v5, Lcom/coremobility/app/vnotes/kd;->d:J

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;

    move-result-object v3

    iput-object v3, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    iget v3, v3, Lcom/coremobility/l/ac;->b:I

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/kb;->b(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_809

    const/4 v3, 0x1

    :goto_803
    if-eqz v3, :cond_80b

    const/16 v3, 0x9

    goto/16 :goto_706

    :cond_809
    const/4 v3, 0x0

    goto :goto_803

    :cond_80b
    const/16 v3, 0x8

    goto/16 :goto_706

    :pswitch_80f
    iget-object v4, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v4, :cond_706

    iget-wide v3, v2, Lcom/coremobility/l/af;->b:J

    iput-wide v3, v5, Lcom/coremobility/app/vnotes/kd;->d:J

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;

    move-result-object v3

    iput-object v3, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    const/16 v3, 0xa

    goto/16 :goto_706

    :pswitch_823
    iget-object v4, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v4, :cond_706

    iget-wide v3, v2, Lcom/coremobility/l/af;->b:J

    iput-wide v3, v5, Lcom/coremobility/app/vnotes/kd;->d:J

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;

    move-result-object v3

    iput-object v3, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    iget v3, v3, Lcom/coremobility/l/ac;->b:I

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/kb;->b(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_848

    const/4 v3, 0x1

    :goto_842
    if-eqz v3, :cond_84a

    const/16 v3, 0xb

    goto/16 :goto_706

    :cond_848
    const/4 v3, 0x0

    goto :goto_842

    :cond_84a
    const/16 v3, 0xd

    goto/16 :goto_706

    :pswitch_84e
    iget-object v4, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v4, :cond_706

    iget-wide v3, v2, Lcom/coremobility/l/af;->b:J

    iput-wide v3, v5, Lcom/coremobility/app/vnotes/kd;->d:J

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;

    move-result-object v3

    iput-object v3, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    const/16 v3, 0xc

    goto/16 :goto_706

    :pswitch_862
    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v3, :cond_872

    iget-wide v3, v2, Lcom/coremobility/l/af;->b:J

    iput-wide v3, v5, Lcom/coremobility/app/vnotes/kd;->d:J

    iget-object v3, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;

    move-result-object v3

    iput-object v3, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    :cond_872
    const/4 v3, 0x6

    goto/16 :goto_706

    :pswitch_875
    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_8a1

    const/4 v3, 0x1

    :goto_880
    if-eqz v3, :cond_8a5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v3

    if-eqz v3, :cond_8a3

    const/4 v3, 0x1

    :goto_88c
    iget-object v4, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v4, :cond_89c

    iget-wide v6, v2, Lcom/coremobility/l/af;->b:J

    iput-wide v6, v5, Lcom/coremobility/app/vnotes/kd;->d:J

    iget-object v4, v2, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;

    move-result-object v4

    iput-object v4, v5, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    :cond_89c
    if-eqz v3, :cond_8a7

    const/4 v3, 0x2

    goto/16 :goto_706

    :cond_8a1
    const/4 v3, 0x0

    goto :goto_880

    :cond_8a3
    const/4 v3, 0x0

    goto :goto_88c

    :cond_8a5
    const/4 v3, 0x0

    goto :goto_88c

    :cond_8a7
    const/4 v3, 0x7

    goto/16 :goto_706

    :pswitch_8aa
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VN_EVENT_VTT_AVAILABLEPLANS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_60

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->m()V

    move-object/from16 v2, p6

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/l/ac;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v4

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/l/ac;)Lcom/coremobility/app/vnotes/ke;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_8d6

    :cond_8ee
    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v3

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_909

    const/4 v2, 0x1

    :goto_8fd
    if-eqz v2, :cond_904

    iget v2, v3, Lcom/coremobility/app/vnotes/kd;->c:I

    packed-switch v2, :pswitch_data_b92

    :cond_904
    :goto_904
    :pswitch_904
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/cf;->ak()V

    goto/16 :goto_60

    :cond_909
    const/4 v2, 0x0

    goto :goto_8fd

    :pswitch_90b
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v2

    if-eqz v2, :cond_93d

    const/4 v2, 0x1

    :goto_915
    if-eqz v2, :cond_93f

    const/4 v2, 0x2

    :goto_918
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVttLifeCycleState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coremobility/app/vnotes/kb;->a(I)V

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/cf;->n(I)V

    goto :goto_904

    :cond_93d
    const/4 v2, 0x0

    goto :goto_915

    :cond_93f
    const/4 v2, 0x7

    goto :goto_918

    :pswitch_941
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VN_EVENT_VTT_SUBSCRIBERPREFERENCE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_60

    move-object/from16 v2, p6

    check-cast v2, Lcom/coremobility/l/ad;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v3

    iget-object v4, v2, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/coremobility/app/vnotes/kd;->b:Ljava/lang/String;

    iget v4, v2, Lcom/coremobility/l/ad;->c:I

    iput v4, v3, Lcom/coremobility/app/vnotes/kd;->e:I

    iget-object v4, v2, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98f

    iget-object v4, v2, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/coremobility/app/vnotes/kd;->a:Ljava/lang/String;

    sget-object v4, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    iget-object v2, v2, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "preference_from_name"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_98f
    const/4 v2, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "archive email: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/coremobility/app/vnotes/kd;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "archive mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/coremobility/app/vnotes/kd;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriber name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/coremobility/app/vnotes/kd;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_60

    :pswitch_9e5
    const/4 v2, 0x6

    const-string v3, "VN_EVENT_VTT_DEBUG: "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    iget-boolean v2, v2, Lcom/coremobility/app/vnotes/cf;->g:Z

    if-nez v2, :cond_a06

    const/4 v2, 0x1

    :goto_9f7
    iput-boolean v2, v3, Lcom/coremobility/app/vnotes/cf;->g:Z

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    iget-boolean v2, v2, Lcom/coremobility/app/vnotes/cf;->g:Z

    if-eqz v2, :cond_a08

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {v2}, Lcom/coremobility/app/vnotes/cf;->ak()V

    goto/16 :goto_60

    :cond_a06
    const/4 v2, 0x0

    goto :goto_9f7

    :cond_a08
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    goto/16 :goto_60

    :pswitch_a0e
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VN_EVENT_VTT_GET_SUBSCRIPTION_ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_60

    :pswitch_a2c
    move-wide/from16 v0, p2

    long-to-int v4, v0

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :goto_a37
    if-ge v3, v5, :cond_60

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->L:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/k/de;

    invoke-virtual {v2}, Lcom/coremobility/k/de;->g()I

    move-result v2

    if-ne v4, v2, :cond_a80

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2, v4}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v2

    if-eqz v2, :cond_a7b

    invoke-virtual {v2}, Lcom/coremobility/k/de;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/coremobility/app/vnotes/cq;->c(J)Z

    move-result v3

    if-nez v3, :cond_a7b

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->c(Lcom/coremobility/k/de;)Z

    move-result v3

    if-nez v3, :cond_a7b

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;Landroid/content/Context;)V

    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preference_vibration"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    :cond_a7b
    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/cf;->k(I)V

    goto/16 :goto_60

    :cond_a80
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a37

    :pswitch_a84
    sget-object v2, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preference_vibration"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    goto/16 :goto_60

    :pswitch_a98
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b()Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    move-result-object v2

    if-eqz v2, :cond_ac2

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b()Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->g()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_ac2

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b()Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e()V

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b()Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :cond_ab9
    :goto_ab9
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/da;->b()V

    goto/16 :goto_60

    :cond_ac2
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    move-result-object v2

    if-eqz v2, :cond_ad2

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->showDialog(I)V

    goto :goto_ab9

    :cond_ad2
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    move-result-object v2

    if-eqz v2, :cond_ae2

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->showDialog(I)V

    goto :goto_ab9

    :cond_ae2
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a()Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    move-result-object v2

    if-eqz v2, :cond_af9

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a()Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->d()V

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->a()Lcom/coremobility/app/vnotes/CM_VnoteSaved;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->showDialog(I)V

    goto :goto_ab9

    :cond_af9
    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    move-result-object v2

    if-eqz v2, :cond_ab9

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a()Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    goto :goto_ab9

    :pswitch_b09
    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->j:Lcom/coremobility/app/vnotes/cn;

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v0}, Lcom/coremobility/app/vnotes/cn;->a(ILjava/lang/Object;)Z

    goto/16 :goto_60

    :cond_b12
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_68

    :cond_b17
    const/4 v2, 0x0

    goto/16 :goto_32

    :catch_b1a
    move-exception v2

    goto/16 :goto_167

    nop

    :pswitch_data_b1e
    .packed-switch 0x64
        :pswitch_33b
        :pswitch_52c
        :pswitch_60
        :pswitch_60
        :pswitch_23b
        :pswitch_2b7
        :pswitch_58a
        :pswitch_198
        :pswitch_1e7
        :pswitch_211
        :pswitch_60
        :pswitch_4f2
        :pswitch_5da
        :pswitch_2fd
        :pswitch_60
        :pswitch_5ad
        :pswitch_60
        :pswitch_60
        :pswitch_14b
        :pswitch_171
        :pswitch_41f
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_aa
        :pswitch_102
        :pswitch_89
        :pswitch_8aa
        :pswitch_671
        :pswitch_941
        :pswitch_653
        :pswitch_60
        :pswitch_60
        :pswitch_9e5
        :pswitch_a0e
        :pswitch_a2c
        :pswitch_a84
        :pswitch_60
        :pswitch_a98
        :pswitch_60
        :pswitch_b09
    .end packed-switch

    :pswitch_data_b74
    .packed-switch -0x3
        :pswitch_7e1
        :pswitch_7c5
        :pswitch_7c2
        :pswitch_823
        :pswitch_862
        :pswitch_84e
        :pswitch_875
        :pswitch_7c2
        :pswitch_7c2
        :pswitch_875
        :pswitch_875
        :pswitch_7e4
        :pswitch_80f
    .end packed-switch

    :pswitch_data_b92
    .packed-switch 0x3
        :pswitch_90b
        :pswitch_904
        :pswitch_904
        :pswitch_90b
        :pswitch_90b
    .end packed-switch
.end method

.method public final b(Lcom/coremobility/app/vnotes/bm;)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    move v0, v1

    :goto_e
    if-ge v0, v2, :cond_41

    iget-object v3, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_42

    iget-object v3, p0, Lcom/coremobility/app/vnotes/cf;->ag:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne v2, v0, :cond_41

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->ah:Z

    if-eqz v0, :cond_41

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_34

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/app/CM_App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    :cond_34
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->ai:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/cf;->ah:Z

    :cond_41
    return-void

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public final b(Lcom/coremobility/integration/i/e;)V
    .registers 5

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1d

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aA:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_1c
    return-void

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final b(Lcom/coremobility/integration/i/g;)V
    .registers 5

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1d

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_1c
    return-void

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final b(Lcom/coremobility/integration/i/h;)V
    .registers 5

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1d

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_1c
    return-void

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final b(Lcom/coremobility/k/de;)V
    .registers 12

    if-nez p1, :cond_b

    const/4 v0, 0x6

    const-string v1, "VnoteMovedToInboxFromDeletedFolder info is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v4

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Lcom/coremobility/k/de;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v1, v6, v8

    if-nez v1, :cond_7e

    const/4 v1, 0x1

    :goto_28
    if-eqz v1, :cond_80

    const/16 v1, 0x78

    :goto_2c
    invoke-virtual {p1}, Lcom/coremobility/k/de;->a()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v3

    int-to-long v7, v3

    invoke-direct {p0, p1, v1, v7, v8}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    if-eqz v0, :cond_83

    invoke-virtual {p1}, Lcom/coremobility/k/de;->g()I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->f(I)Z

    move-result v0

    move v3, v0

    :goto_44
    if-eqz v3, :cond_86

    int-to-long v6, v6

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_86

    move-object v0, p1

    :goto_51
    const/16 v2, 0x64

    if-ne v1, v2, :cond_5f

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    if-ltz v2, :cond_5f

    iget v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coremobility/app/vnotes/cf;->h:I

    :cond_5f
    const/16 v2, 0x78

    if-eq v1, v2, :cond_70

    if-nez v3, :cond_70

    invoke-static {v4, v5}, Lcom/coremobility/app/vnotes/cq;->c(J)Z

    move-result v1

    if-nez v1, :cond_70

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_70
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;Lcom/coremobility/k/de;)V

    :cond_7b
    return-void

    :cond_7c
    const/4 v0, 0x0

    goto :goto_17

    :cond_7e
    const/4 v1, 0x0

    goto :goto_28

    :cond_80
    const/16 v1, 0x64

    goto :goto_2c

    :cond_83
    const/4 v0, 0x0

    move v3, v0

    goto :goto_44

    :cond_86
    move-object v0, v2

    goto :goto_51
.end method

.method public final b(Z)V
    .registers 15

    const/4 v4, 0x0

    const/16 v8, 0x78

    const/4 v9, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->N:Z

    if-nez v0, :cond_ac

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->M:Z

    if-nez v0, :cond_a3

    sput-boolean v6, Lcom/coremobility/app/vnotes/cf;->M:Z

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handleRestoreNotifications query executed"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->r:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    const-string v3, "(status & 2 == 0 ) AND dir_id=3 AND is_deleted!=2 AND _id=record_id"

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const-string v0, "handleRestoreNotifications query finished"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_b9

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a0

    move-object v1, v4

    :goto_3f
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/database/Cursor;)Lcom/coremobility/k/de;

    move-result-object v4

    if-eqz v4, :cond_ad

    invoke-virtual {v4}, Lcom/coremobility/k/de;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ad

    move v2, v6

    :goto_54
    invoke-virtual {v4}, Lcom/coremobility/k/de;->b()[J

    move-result-object v3

    aget-wide v9, v3, v7

    if-eqz v4, :cond_bf

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-eqz v3, :cond_bf

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_af

    move v3, v8

    :goto_73
    invoke-virtual {v4}, Lcom/coremobility/k/de;->g()I

    move-result v0

    int-to-long v9, v0

    invoke-direct {p0, v4, v3, v9, v10}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/de;IJ)V

    if-eqz v2, :cond_b3

    invoke-virtual {v4}, Lcom/coremobility/k/de;->g()I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->f(I)Z

    move-result v0

    move v2, v0

    :goto_86
    if-eqz v2, :cond_bd

    move-object v0, v4

    :goto_89
    if-eq v3, v8, :cond_92

    if-nez v2, :cond_92

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->K:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_92
    :goto_92
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_c1

    invoke-static {v7, v6, v6}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;Lcom/coremobility/k/de;)V

    :cond_a0
    :goto_a0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a3
    :goto_a3
    invoke-static {}, Lcom/coremobility/integration/i/f;->a()Lcom/coremobility/integration/i/f;

    move-result-object v0

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->G:Lcom/coremobility/app/vnotes/cf;

    invoke-virtual {v0, v1, v6, p1}, Lcom/coremobility/integration/i/f;->a(Lcom/coremobility/integration/i/e;ZZ)I

    :cond_ac
    return-void

    :cond_ad
    move v2, v7

    goto :goto_54

    :cond_af
    const/16 v0, 0x64

    move v3, v0

    goto :goto_73

    :cond_b3
    move v2, v7

    goto :goto_86

    :cond_b5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto :goto_a0

    :cond_b9
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aj()V

    goto :goto_a3

    :cond_bd
    move-object v0, v1

    goto :goto_89

    :cond_bf
    move-object v0, v1

    goto :goto_92

    :cond_c1
    move-object v1, v0

    goto/16 :goto_3f
.end method

.method public final c()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aq:Ljava/util/Vector;

    return-object v0
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/cf;->T:Z

    return-void
.end method

.method public final d()Lcom/coremobility/app/vnotes/hp;
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ar:Lcom/coremobility/app/vnotes/hp;

    if-nez v0, :cond_16

    new-instance v0, Lcom/coremobility/app/vnotes/hp;

    sget-object v1, Lcom/coremobility/app/vnotes/cf;->H:Lcom/coremobility/integration/app/CM_App;

    invoke-direct {v0, v1}, Lcom/coremobility/app/vnotes/hp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ar:Lcom/coremobility/app/vnotes/hp;

    const/4 v0, 0x6

    const-string v1, "Recent list created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ar:Lcom/coremobility/app/vnotes/hp;

    return-object v0
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/cf;->V:Z

    return-void
.end method

.method public final h(I)V
    .registers 6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aE:Landroid/os/Handler;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lcom/coremobility/integration/app/CM_App;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aE:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aE:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_29
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_35
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/i/h;

    invoke-interface {v0, p1}, Lcom/coremobility/integration/i/h;->h(I)V

    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_35
.end method

.method public final i(I)V
    .registers 6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aF:Landroid/os/Handler;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lcom/coremobility/integration/app/CM_App;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aF:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->aF:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_29
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_35
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->aC:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/i/g;

    invoke-interface {v0, p1}, Lcom/coremobility/integration/i/g;->i(I)V

    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_35
.end method

.method public final o()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x6

    const-string v1, "VnoteApp destroyed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->g()V

    sget-object v0, Lcom/coremobility/app/vnotes/a;->a:Lcom/coremobility/app/vnotes/a;

    if-eqz v0, :cond_16

    sput-object v4, Lcom/coremobility/app/vnotes/a;->a:Lcom/coremobility/app/vnotes/a;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    :cond_16
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->O:Ljava/util/Timer;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->O:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v4, p0, Lcom/coremobility/app/vnotes/cf;->O:Ljava/util/Timer;

    :cond_21
    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->ah:Z

    if-eqz v0, :cond_32

    sget-object v0, Lcom/coremobility/app/vnotes/cf;->af:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->ai:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/cf;->ah:Z

    :cond_32
    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ae:Lcom/coremobility/integration/b;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ae:Lcom/coremobility/integration/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b;->e()V

    iput-object v4, p0, Lcom/coremobility/app/vnotes/cf;->ae:Lcom/coremobility/integration/b;

    :cond_3d
    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->c()V

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3a

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_3b

    move v0, v1

    :goto_18
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->T:Z

    if-nez v0, :cond_3d

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/cf;->f(Z)V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    move v0, v2

    goto :goto_18

    :cond_3d
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/cf;->f(Z)V

    goto :goto_3a
.end method

.method public final q()Lcom/coremobility/app/vnotes/cp;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ap:Lcom/coremobility/app/vnotes/cp;

    return-object v0
.end method

.method public final r()V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ak:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->al:Landroid/hardware/Sensor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ak:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->al:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_10
    return-void
.end method

.method public final s()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ak:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->al:Landroid/hardware/Sensor;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ak:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cf;->al:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/cf;->f(Z)V

    :cond_13
    return-void
.end method

.method public final t()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/cf;->ab:Landroid/app/Activity;

    return-object v0
.end method

.method public final u()I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/cf;->R:I

    return v0
.end method

.method public final v()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->S:Z

    return v0
.end method

.method public final w()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->S:Z

    return-void
.end method

.method public final x()I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/cf;->am:I

    return v0
.end method

.method public final y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/cf;->an:Z

    return v0
.end method
