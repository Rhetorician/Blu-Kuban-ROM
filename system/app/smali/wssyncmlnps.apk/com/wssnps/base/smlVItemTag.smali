.class public Lcom/wssnps/base/smlVItemTag;
.super Ljava/lang/Object;
.source "smlVItemTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/base/smlVItemTag$VitemHash;
    }
.end annotation


# static fields
.field public static VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

.field public static VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

.field public static VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

.field public static VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

.field public static VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    new-instance v0, Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-direct {v0, v4}, Lcom/wssnps/base/smlVItemTag$VitemHash;-><init>(Z)V

    sput-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    .line 49
    new-instance v0, Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-direct {v0, v3}, Lcom/wssnps/base/smlVItemTag$VitemHash;-><init>(Z)V

    sput-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    .line 51
    new-instance v0, Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-direct {v0, v3}, Lcom/wssnps/base/smlVItemTag$VitemHash;-><init>(Z)V

    sput-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    .line 52
    new-instance v0, Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-direct {v0, v3}, Lcom/wssnps/base/smlVItemTag$VitemHash;-><init>(Z)V

    sput-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    .line 54
    new-instance v0, Lcom/wssnps/base/smlVItemTag$VitemHash;

    invoke-direct {v0, v3}, Lcom/wssnps/base/smlVItemTag$VitemHash;-><init>(Z)V

    sput-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    .line 59
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "BEGIN"

    invoke-virtual {v0, v4, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 60
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "END"

    invoke-virtual {v0, v3, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 61
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "FN"

    invoke-virtual {v0, v5, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 62
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "N"

    invoke-virtual {v0, v7, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 63
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "NICKNAME"

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 64
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x5

    const-string v2, "TEL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 65
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x6

    const-string v2, "EMAIL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 66
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x7

    const-string v2, "TITLE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 67
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x8

    const-string v2, "ROLE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 68
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x9

    const-string v2, "ORG"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 69
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xa

    const-string v2, "ADR"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 70
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xb

    const-string v2, "BDAY"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 71
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xc

    const-string v2, "PHOTO"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 72
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xd

    const-string v2, "URL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 73
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xe

    const-string v2, "NOTE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 74
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xf

    const-string v2, "VERSION"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 75
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x10

    const-string v2, "X-GROUP"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 76
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x11

    const-string v2, "X-SDIAL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 77
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x15

    const-string v2, "GN"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 78
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x16

    const-string v2, "GT"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 79
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x17

    const-string v2, "X-SPEEDDIAL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 80
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x1e

    const-string v2, "X-ACCOUNT"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 81
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x1f

    const-string v2, "X-IM"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 82
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x23

    const-string v2, "X-ANNIVERSARY"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 83
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x20

    const-string v2, "X-EVENT"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 84
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x24

    const-string v2, "X-RELATION"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 86
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "BEGIN"

    invoke-virtual {v0, v4, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 87
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "END"

    invoke-virtual {v0, v3, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 88
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "SUMMARY"

    invoke-virtual {v0, v5, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 89
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "DTSTART"

    invoke-virtual {v0, v7, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 90
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "DTEND"

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 91
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x5

    const-string v2, "RRULE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 92
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x6

    const-string v2, "DALARM"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 93
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xe

    const-string v2, "AALARM"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 94
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x7

    const-string v2, "CATEGORIES"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 95
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xd

    const-string v2, "LOCATION"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 96
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x9

    const-string v2, "DESCRIPTION"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 97
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xa

    const-string v2, "PRIORITY"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 98
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xb

    const-string v2, "STATUS"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 99
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xc

    const-string v2, "DUE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 100
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x8

    const-string v2, "CLASS"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 101
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x13

    const-string v2, "ATTENDEE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 102
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x14

    const-string v2, "COLOR"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 103
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x15

    const-string v2, "X-ALLDAY"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 104
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x19

    const-string v2, "X-LUNAR"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 105
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x16

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 106
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x17

    const-string v2, "X-EXTYPE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 107
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x18

    const-string v2, "EXDATE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 108
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x1a

    const-string v2, "X-SS-ATTACH-IMAGE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 109
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x1b

    const-string v2, "X-SS-ATTACH-SMEMO"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 111
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "BEGIN"

    invoke-virtual {v0, v4, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 112
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "END"

    invoke-virtual {v0, v3, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 113
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "VERSION"

    invoke-virtual {v0, v5, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 114
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "BODY"

    invoke-virtual {v0, v7, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 115
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "CATEGORIES"

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 116
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x5

    const-string v2, "DCREATED"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 117
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VNOTE_TAG:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x6

    const-string v2, "MODIFIED"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 123
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x4000

    const-string v2, "INTERNET"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 124
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "HOME"

    invoke-virtual {v0, v3, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 125
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "WORK"

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 126
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "MSG"

    invoke-virtual {v0, v5, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 127
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x8

    const-string v2, "PREF"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 128
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x10

    const-string v2, "FAX"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 129
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x20

    const-string v2, "CELL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 130
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x40

    const-string v2, "VIDEO"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 131
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x80

    const-string v2, "PAGER"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 132
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x100

    const-string v2, "X-ETC"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 133
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x200

    const-string v2, "MODEM"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 134
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x400

    const-string v2, "CAR"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 135
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x800

    const-string v2, "ISDN"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 136
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x1000

    const-string v2, "PCS"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 137
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x2000

    const-string v2, "VOICE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 138
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const v1, 0x8000

    const-string v2, "AIM"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 139
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x1

    const-string v2, "WINDOWSLIVE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 140
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x2

    const-string v2, "YAHOO"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 141
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x4

    const-string v2, "SKYPE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 142
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x8

    const-string v2, "QQ"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 143
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x10

    const-string v2, "GOOGLETALK"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 144
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x20

    const-string v2, "ICQ"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 145
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x40

    const-string v2, "JABBER"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 146
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x80

    const-string v2, "X-CUSTOM"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 148
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x100

    const-string v2, "X-CALLBACK"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 149
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x200

    const-string v2, "X-MAIN"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 150
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x400

    const-string v2, "X-RADIO"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 151
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x800

    const-string v2, "X-TELEX"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 152
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x1000

    const-string v2, "X-TTYTTD"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 153
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x2000

    const-string v2, "X-ASSISTANT"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 154
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCARD_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/high16 v1, 0x4000

    const-string v2, "X-MMS"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 157
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "APPOINTMENT"

    invoke-virtual {v0, v4, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 158
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "BUSINESS"

    invoke-virtual {v0, v3, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 159
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "EDUCATION"

    invoke-virtual {v0, v5, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 160
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "HOLIDAY"

    invoke-virtual {v0, v7, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 161
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const-string v1, "MEETING"

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 162
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x5

    const-string v2, "MISCELLANEOUS"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 163
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x6

    const-string v2, "PERSONAL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 164
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/4 v1, 0x7

    const-string v2, "PHONE CALL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 165
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x8

    const-string v2, "SICK DAY"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 166
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x9

    const-string v2, "SPECIAL OCCASION"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 167
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xa

    const-string v2, "TRAVEL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 168
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xb

    const-string v2, "VACATION"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 169
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xc

    const-string v2, "ANNIVERSARY"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 170
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xd

    const-string v2, "MEMO"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 171
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xe

    const-string v2, "IMPORTANT"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 172
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0xf

    const-string v2, "PRIVATE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 174
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x10

    const-string v2, "APPOINTMENT"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 175
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x11

    const-string v2, "NEEDS ACTION"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 176
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x12

    const-string v2, "SEND"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 177
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x13

    const-string v2, "HOLIDAY"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 178
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x15

    const-string v2, "DECLINED"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 179
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x16

    const-string v2, "COMPLETED"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 181
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x18

    const-string v2, "PUBLIC"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 182
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x19

    const-string v2, "PRIVATE"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 183
    sget-object v0, Lcom/wssnps/base/smlVItemTag;->VCAL_TYPE:Lcom/wssnps/base/smlVItemTag$VitemHash;

    const/16 v1, 0x1a

    const-string v2, "CONFIDENTIAL"

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/base/smlVItemTag$VitemHash;->add(ILjava/lang/String;)V

    .line 7
    return-void
.end method