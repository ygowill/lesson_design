#line 1 "..\\code\\UCOSII\\SOURCE\\os_mutex.c"





















 

#line 1 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"




















 












 







 

#line 1 "..\\code\\application\\app_cfg.h"







 








											 










 
					









 
void Start_Task(void *p_arg);



#line 45 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\application\\os_cfg.h"






















 





                                        










                                        













                                        





                                        
#line 73 "..\\code\\application\\os_cfg.h"


                                        
#line 83 "..\\code\\application\\os_cfg.h"


                                        
#line 93 "..\\code\\application\\os_cfg.h"


                                        





                                        






                                        
#line 118 "..\\code\\application\\os_cfg.h"


                                        
#line 127 "..\\code\\application\\os_cfg.h"


                                        






                                        







	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 46 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\UCOSII\\PORTS\\os_cpu.h"






















 
















 

typedef unsigned char  BOOLEAN;
typedef unsigned char  INT8U;                     
typedef signed   char  INT8S;                     
typedef unsigned short INT16U;                    
typedef signed   short INT16S;                    
typedef unsigned int   INT32U;                    
typedef signed   int   INT32S;                    
typedef float          FP32;                      
typedef double         FP64;                      

typedef unsigned int   OS_STK;                    
typedef unsigned int   OS_CPU_SR;                 





















 












 









 


OS_CPU_SR  OS_CPU_SR_Save(void);
void       OS_CPU_SR_Restore(OS_CPU_SR cpu_sr);


void       OSCtxSw(void);
void       OSIntCtxSw(void);
void       OSStartHighRdy(void);

void       OS_CPU_PendSVHandler(void);

                                                   



                                                   

#line 47 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




























#line 88 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"









 




 
#line 111 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 








 
#line 134 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


                                             





 

























 











 









 









 









 









 












 









 


#line 255 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 266 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"













#line 293 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 300 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 311 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 320 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 337 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef  INT8U    OS_PRIO;





typedef struct os_event {
    INT8U    OSEventType;                     
    void    *OSEventPtr;                      
    INT16U   OSEventCnt;                      
    OS_PRIO  OSEventGrp;                      
    OS_PRIO  OSEventTbl[((63u) / 8u + 1u)];   




} OS_EVENT;







 








typedef  INT16U   OS_FLAGS;







typedef struct os_flag_grp {                 
    INT8U         OSFlagType;                
    void         *OSFlagWaitList;            
    OS_FLAGS      OSFlagFlags;               

    INT8U        *OSFlagName;

} OS_FLAG_GRP;



typedef struct os_flag_node {                
    void         *OSFlagNodeNext;            
    void         *OSFlagNodePrev;            
    void         *OSFlagNodeTCB;             
    void         *OSFlagNodeFlagGrp;         
    OS_FLAGS      OSFlagNodeFlags;           
    INT8U         OSFlagNodeWaitType;        
                                             
                                             
                                             
                                             
} OS_FLAG_NODE;


 




 


typedef struct os_mbox_data {
    void   *OSMsg;                          
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  
    OS_PRIO OSEventGrp;                     
} OS_MBOX_DATA;






 

#line 455 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef struct os_mutex_data {
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
    BOOLEAN OSValue;                         
    INT8U   OSOwnerPrio;                     
    INT8U   OSMutexPIP;                      
} OS_MUTEX_DATA;






 


typedef struct os_q {                    
    struct os_q   *OSQPtr;               
    void         **OSQStart;             
    void         **OSQEnd;               
    void         **OSQIn;                
    void         **OSQOut;               
    INT16U         OSQSize;              
    INT16U         OSQEntries;           
} OS_Q;


typedef struct os_q_data {
    void          *OSMsg;                
    INT16U         OSNMsgs;              
    INT16U         OSQSize;              
    OS_PRIO        OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO        OSEventGrp;           
} OS_Q_DATA;






 


typedef struct os_sem_data {
    INT16U  OSCnt;                           
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
} OS_SEM_DATA;






 


typedef struct os_stk_data {
    INT32U  OSFree;                     
    INT32U  OSUsed;                     
} OS_STK_DATA;


 




 

typedef struct os_tcb {
    OS_STK          *OSTCBStkPtr;            


    void            *OSTCBExtPtr;            
    OS_STK          *OSTCBStkBottom;         
    INT32U           OSTCBStkSize;           
    INT16U           OSTCBOpt;               
    INT16U           OSTCBId;                


    struct os_tcb   *OSTCBNext;              
    struct os_tcb   *OSTCBPrev;              


    OS_EVENT        *OSTCBEventPtr;          







    void            *OSTCBMsg;               




    OS_FLAG_NODE    *OSTCBFlagNode;          

    OS_FLAGS         OSTCBFlagsRdy;          


    INT32U           OSTCBDly;               
    INT8U            OSTCBStat;              
    INT8U            OSTCBStatPend;          
    INT8U            OSTCBPrio;              

    INT8U            OSTCBX;                 
    INT8U            OSTCBY;                 
    OS_PRIO          OSTCBBitX;              
    OS_PRIO          OSTCBBitY;              


    INT8U            OSTCBDelReq;            



    INT32U           OSTCBCtxSwCtr;          
    INT32U           OSTCBCyclesTot;         
    INT32U           OSTCBCyclesStart;       
    OS_STK          *OSTCBStkBase;           
    INT32U           OSTCBStkUsed;           



    INT8U           *OSTCBTaskName;



    INT32U           OSTCBRegTbl[1u];

} OS_TCB;

 




 

#line 636 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 

extern  INT32U            OSCtxSwCtr;                


extern  OS_EVENT         *OSEventFreeList;           
extern  OS_EVENT          OSEventTbl[10u]; 



extern  OS_FLAG_GRP       OSFlagTbl[5u];   
extern  OS_FLAG_GRP      *OSFlagFreeList;            



extern  INT8U             OSCPUUsage;                
extern  INT32U            OSIdleCtrMax;              
extern  INT32U            OSIdleCtrRun;              
extern  BOOLEAN           OSStatRdy;                 
extern  OS_STK            OSTaskStatStk[128u];       


extern  INT8U             OSIntNesting;              

extern  INT8U             OSLockNesting;             

extern  INT8U             OSPrioCur;                 
extern  INT8U             OSPrioHighRdy;             

extern  OS_PRIO           OSRdyGrp;                         
extern  OS_PRIO           OSRdyTbl[((63u) / 8u + 1u)];        

extern  BOOLEAN           OSRunning;                        

extern  INT8U             OSTaskCtr;                        

extern  volatile  INT32U  OSIdleCtr;                                  





extern  OS_STK            OSTaskIdleStk[128u];       


extern  OS_TCB           *OSTCBCur;                         
extern  OS_TCB           *OSTCBFreeList;                    
extern  OS_TCB           *OSTCBHighRdy;                     
extern  OS_TCB           *OSTCBList;                        
extern  OS_TCB           *OSTCBPrioTbl[63u + 1u];     
extern  OS_TCB            OSTCBTbl[5u + 2u];    


extern  INT8U             OSTickStepState;           








extern  OS_Q             *OSQFreeList;               
extern  OS_Q              OSQTbl[4u];         



extern  volatile  INT32U  OSTime;                    


#line 726 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

extern  INT8U   const     OSUnMapTbl[256];           

 





 





 



#line 754 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 762 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 




OS_FLAGS      OSFlagAccept            (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagCreate            (OS_FLAGS         flags,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagDel               (OS_FLAG_GRP     *pgrp,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSFlagNameGet           (OS_FLAG_GRP     *pgrp,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSFlagNameSet           (OS_FLAG_GRP     *pgrp,
                                       INT8U           *pname,
                                       INT8U           *perr);


OS_FLAGS      OSFlagPend              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT32U           timeout,
                                       INT8U           *perr);

OS_FLAGS      OSFlagPendGetFlagsRdy   (void);
OS_FLAGS      OSFlagPost              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            opt,
                                       INT8U           *perr);


OS_FLAGS      OSFlagQuery             (OS_FLAG_GRP     *pgrp,
                                       INT8U           *perr);







 




void         *OSMboxAccept            (OS_EVENT        *pevent);


OS_EVENT     *OSMboxCreate            (void            *pmsg);


OS_EVENT     *OSMboxDel               (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void         *OSMboxPend              (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSMboxPendAbort         (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSMboxPost              (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSMboxPostOpt           (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSMboxQuery             (OS_EVENT        *pevent,
                                       OS_MBOX_DATA    *p_mbox_data);







 

#line 897 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




BOOLEAN       OSMutexAccept           (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSMutexCreate           (INT8U            prio,
                                       INT8U           *perr);


OS_EVENT     *OSMutexDel              (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSMutexPend             (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);

INT8U         OSMutexPost             (OS_EVENT        *pevent);


INT8U         OSMutexQuery            (OS_EVENT        *pevent,
                                       OS_MUTEX_DATA   *p_mutex_data);




 




 




void         *OSQAccept               (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSQCreate               (void           **start,
                                       INT16U           size);


OS_EVENT     *OSQDel                  (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQFlush                (OS_EVENT        *pevent);


void         *OSQPend                 (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSQPendAbort            (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQPost                 (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostFront            (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostOpt              (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSQQuery                (OS_EVENT        *pevent,
                                       OS_Q_DATA       *p_q_data);




 




 



INT16U        OSSemAccept             (OS_EVENT        *pevent);


OS_EVENT     *OSSemCreate             (INT16U           cnt);


OS_EVENT     *OSSemDel                (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSSemPend               (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSSemPendAbort          (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


INT8U         OSSemPost               (OS_EVENT        *pevent);


INT8U         OSSemQuery              (OS_EVENT        *pevent,
                                       OS_SEM_DATA     *p_sem_data);



void          OSSemSet                (OS_EVENT        *pevent,
                                       INT16U           cnt,
                                       INT8U           *perr);




 




 

INT8U         OSTaskChangePrio        (INT8U            oldprio,
                                       INT8U            newprio);



INT8U         OSTaskCreate            (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio);



INT8U         OSTaskCreateExt         (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio,
                                       INT16U           id,
                                       OS_STK          *pbos,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);



INT8U         OSTaskDel               (INT8U            prio);
INT8U         OSTaskDelReq            (INT8U            prio);



INT8U         OSTaskNameGet           (INT8U            prio,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSTaskNameSet           (INT8U            prio,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT8U         OSTaskResume            (INT8U            prio);
INT8U         OSTaskSuspend           (INT8U            prio);



INT8U         OSTaskStkChk            (INT8U            prio,
                                       OS_STK_DATA     *p_stk_data);



INT8U         OSTaskQuery             (INT8U            prio,
                                       OS_TCB          *p_task_data);





INT32U        OSTaskRegGet            (INT8U            prio,
                                       INT8U            id,
                                       INT8U           *perr);

void          OSTaskRegSet            (INT8U            prio,
                                       INT8U            id,
                                       INT32U           value,
                                       INT8U           *perr);


 




 

void          OSTimeDly               (INT32U           ticks);


INT8U         OSTimeDlyHMSM           (INT8U            hours,
                                       INT8U            minutes,
                                       INT8U            seconds,
                                       INT16U           ms);



INT8U         OSTimeDlyResume         (INT8U            prio);



INT32U        OSTimeGet               (void);
void          OSTimeSet               (INT32U           ticks);


void          OSTimeTick              (void);





 

#line 1177 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 

void          OSInit                  (void);

void          OSIntEnter              (void);
void          OSIntExit               (void);






void          OSSchedLock             (void);
void          OSSchedUnlock           (void);


void          OSStart                 (void);

void          OSStatInit              (void);

INT16U        OSVersion               (void);

 





 


void          OS_Dummy                (void);



INT8U         OS_EventTaskRdy         (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            msk,
                                       INT8U            pend_stat);

void          OS_EventTaskWait        (OS_EVENT        *pevent);

void          OS_EventTaskRemove      (OS_TCB          *ptcb,
                                       OS_EVENT        *pevent);

#line 1233 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

void          OS_EventWaitListInit    (OS_EVENT        *pevent);



void          OS_FlagInit             (void);
void          OS_FlagUnlink           (OS_FLAG_NODE    *pnode);


void          OS_MemClr               (INT8U           *pdest,
                                       INT16U           size);

void          OS_MemCopy              (INT8U           *pdest,
                                       INT8U           *psrc,
                                       INT16U           size);






void          OS_QInit                (void);


void          OS_Sched                (void);


INT8U         OS_StrLen               (INT8U           *psrc);


void          OS_TaskIdle             (void            *p_arg);

void          OS_TaskReturn           (void);


void          OS_TaskStat             (void            *p_arg);



void          OS_TaskStkClr           (OS_STK          *pbos,
                                       INT32U           size,
                                       INT16U           opt);



void          OS_TaskStatStkChk       (void);


INT8U         OS_TCBInit              (INT8U            prio,
                                       OS_STK          *ptos,
                                       OS_STK          *pbos,
                                       INT16U           id,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);





 





 





void          OSInitHookBegin         (void);
void          OSInitHookEnd           (void);

void          OSTaskCreateHook        (OS_TCB          *ptcb);
void          OSTaskDelHook           (OS_TCB          *ptcb);

void          OSTaskIdleHook          (void);

void          OSTaskReturnHook        (OS_TCB          *ptcb);

void          OSTaskStatHook          (void);
OS_STK       *OSTaskStkInit           (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT16U           opt);


void          OSTaskSwHook            (void);


void          OSTCBInitHook           (OS_TCB          *ptcb);


void          OSTimeTickHook          (void);


 





 

#line 1358 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 







 










 





 

#line 1402 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






























 

#line 1440 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


























 

#line 1478 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1500 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1526 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






































 

#line 1572 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






















 

#line 1602 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"























































#line 1664 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 





















 

#line 1737 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






 


























#line 1777 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



































 

#line 1889 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 26 "..\\code\\UCOSII\\SOURCE\\os_mutex.c"








 










 

static  void  OSMutex_RdyAtPrio(OS_TCB *ptcb, INT8U prio);

 































 


BOOLEAN  OSMutexAccept (OS_EVENT  *pevent,
                        INT8U     *perr)
{
    INT8U      pip;                                     

    OS_CPU_SR  cpu_sr = 0u;










#line 106 "..\\code\\UCOSII\\SOURCE\\os_mutex.c"
    if (pevent->OSEventType != 4u) {   
        *perr = 1u;
        return (0u);
    }
    if (OSIntNesting > 0u) {                            
        *perr = 2u;
        return (0u);
    }
    {cpu_sr = OS_CPU_SR_Save();};                                
    pip = (INT8U)(pevent->OSEventCnt >> 8u);            
    if ((pevent->OSEventCnt & ((INT16U)0x00FFu)) == ((INT16U)0x00FFu)) {
        pevent->OSEventCnt &= ((INT16U)0xFF00u);    
        pevent->OSEventCnt |= OSTCBCur->OSTCBPrio;      
        pevent->OSEventPtr  = (void *)OSTCBCur;         
        if (OSTCBCur->OSTCBPrio <= pip) {               
            {OS_CPU_SR_Restore(cpu_sr);};                         
            *perr = 120u;
        } else {
            {OS_CPU_SR_Restore(cpu_sr);};
            *perr = 0u;
        }
        return (1u);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;
    return (0u);
}


 
































 

OS_EVENT  *OSMutexCreate (INT8U   prio,
                          INT8U  *perr)
{
    OS_EVENT  *pevent;

    OS_CPU_SR  cpu_sr = 0u;
















#line 198 "..\\code\\UCOSII\\SOURCE\\os_mutex.c"
    if (OSIntNesting > 0u) {                                
        *perr = 16u;                          
        return ((OS_EVENT *)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (OSTCBPrioTbl[prio] != (OS_TCB *)0) {                
        {OS_CPU_SR_Restore(cpu_sr);};                                 
        *perr = 40u;                          
        return ((OS_EVENT *)0);
    }
    OSTCBPrioTbl[prio] = ((OS_TCB *)1);                   
    pevent             = OSEventFreeList;                   
    if (pevent == (OS_EVENT *)0) {                          
        OSTCBPrioTbl[prio] = (OS_TCB *)0;                   
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr              = 4u;            
        return (pevent);
    }
    OSEventFreeList        = (OS_EVENT *)OSEventFreeList->OSEventPtr;    
    {OS_CPU_SR_Restore(cpu_sr);};
    pevent->OSEventType    = 4u;
    pevent->OSEventCnt     = (INT16U)((INT16U)prio << 8u) | ((INT16U)0x00FFu);  
    pevent->OSEventPtr     = (void *)0;                                  



    OS_EventWaitListInit(pevent);
    *perr                  = 0u;
    return (pevent);
}

 






































 


OS_EVENT  *OSMutexDel (OS_EVENT  *pevent,
                       INT8U      opt,
                       INT8U     *perr)
{
    BOOLEAN    tasks_waiting;
    OS_EVENT  *pevent_return;
    INT8U      pip;                                         
    INT8U      prio;
    OS_TCB    *ptcb;

    OS_CPU_SR  cpu_sr = 0u;










#line 298 "..\\code\\UCOSII\\SOURCE\\os_mutex.c"
    if (pevent->OSEventType != 4u) {       
        *perr = 1u;
        return (pevent);
    }
    if (OSIntNesting > 0u) {                                
        *perr = 15u;                              
        return (pevent);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pevent->OSEventGrp != 0u) {                         
        tasks_waiting = 1u;                            
    } else {
        tasks_waiting = 0u;                           
    }
    switch (opt) {
        case 0u:                                
             if (tasks_waiting == 0u) {



                 pip                 = (INT8U)(pevent->OSEventCnt >> 8u);
                 OSTCBPrioTbl[pip]   = (OS_TCB *)0;         
                 pevent->OSEventType = 0u;
                 pevent->OSEventPtr  = OSEventFreeList;     
                 pevent->OSEventCnt  = 0u;
                 OSEventFreeList     = pevent;
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr               = 0u;
                 pevent_return       = (OS_EVENT *)0;       
             } else {
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr               = 73u;
                 pevent_return       = pevent;
             }
             break;

        case 1u:                                 
             pip  = (INT8U)(pevent->OSEventCnt >> 8u);                     
             prio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu));   
             ptcb = (OS_TCB *)pevent->OSEventPtr;
             if (ptcb != (OS_TCB *)0) {                     
                 if (ptcb->OSTCBPrio == pip) {              
                     OSMutex_RdyAtPrio(ptcb, prio);         
                 }
             }
             while (pevent->OSEventGrp != 0u) {             
                 (void)OS_EventTaskRdy(pevent, (void *)0, 0x10u, 0u);
             }



             pip                 = (INT8U)(pevent->OSEventCnt >> 8u);
             OSTCBPrioTbl[pip]   = (OS_TCB *)0;             
             pevent->OSEventType = 0u;
             pevent->OSEventPtr  = OSEventFreeList;         
             pevent->OSEventCnt  = 0u;
             OSEventFreeList     = pevent;                  
             {OS_CPU_SR_Restore(cpu_sr);};
             if (tasks_waiting == 1u) {                
                 OS_Sched();                                
             }
             *perr         = 0u;
             pevent_return = (OS_EVENT *)0;                 
             break;

        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             *perr         = 7u;
             pevent_return = pevent;
             break;
    }
    return (pevent_return);
}


 






































 

void  OSMutexPend (OS_EVENT  *pevent,
                   INT32U     timeout,
                   INT8U     *perr)
{
    INT8U      pip;                                         
    INT8U      mprio;                                       
    BOOLEAN    rdy;                                         
    OS_TCB    *ptcb;
    OS_EVENT  *pevent2;
    INT8U      y;

    OS_CPU_SR  cpu_sr = 0u;










#line 442 "..\\code\\UCOSII\\SOURCE\\os_mutex.c"
    if (pevent->OSEventType != 4u) {       
        *perr = 1u;
        return;
    }
    if (OSIntNesting > 0u) {                                
        *perr = 2u;                            
        return;
    }
    if (OSLockNesting > 0u) {                               
        *perr = 13u;                         
        return;
    }
 
    {cpu_sr = OS_CPU_SR_Save();};
    pip = (INT8U)(pevent->OSEventCnt >> 8u);                
                                                            
    if ((INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu)) == ((INT16U)0x00FFu)) {
        pevent->OSEventCnt &= ((INT16U)0xFF00u);        
        pevent->OSEventCnt |= OSTCBCur->OSTCBPrio;          
        pevent->OSEventPtr  = (void *)OSTCBCur;             
        if (OSTCBCur->OSTCBPrio <= pip) {                   
            {OS_CPU_SR_Restore(cpu_sr);};                             
            *perr = 120u;
        } else {
            {OS_CPU_SR_Restore(cpu_sr);};
            *perr = 0u;
        }
        return;
    }
    mprio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu));   
    ptcb  = (OS_TCB *)(pevent->OSEventPtr);                        
    if (ptcb->OSTCBPrio > pip) {                                   
        if (mprio > OSTCBCur->OSTCBPrio) {
            y = ptcb->OSTCBY;
            if ((OSRdyTbl[y] & ptcb->OSTCBBitX) != 0u) {           
                OSRdyTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;          
                if (OSRdyTbl[y] == 0u) {                           
                    OSRdyGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
                }
                rdy = 1u;
            } else {
                pevent2 = ptcb->OSTCBEventPtr;
                if (pevent2 != (OS_EVENT *)0) {                    
                    y = ptcb->OSTCBY;
                    pevent2->OSEventTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;
                    if (pevent2->OSEventTbl[y] == 0u) {
                        pevent2->OSEventGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
                    }
                }
                rdy = 0u;                             
            }
            ptcb->OSTCBPrio = pip;                          

            ptcb->OSTCBY    = (INT8U)( ptcb->OSTCBPrio >> 3u);
            ptcb->OSTCBX    = (INT8U)( ptcb->OSTCBPrio & 0x07u);




            ptcb->OSTCBBitY = (OS_PRIO)(1uL << ptcb->OSTCBY);
            ptcb->OSTCBBitX = (OS_PRIO)(1uL << ptcb->OSTCBX);

            if (rdy == 1u) {                           
                OSRdyGrp               |= ptcb->OSTCBBitY;  
                OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
            } else {
                pevent2 = ptcb->OSTCBEventPtr;
                if (pevent2 != (OS_EVENT *)0) {             
                    pevent2->OSEventGrp               |= ptcb->OSTCBBitY;
                    pevent2->OSEventTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
                }
            }
            OSTCBPrioTbl[pip] = ptcb;
        }
    }
    OSTCBCur->OSTCBStat     |= 0x10u;          
    OSTCBCur->OSTCBStatPend  = 0u;
    OSTCBCur->OSTCBDly       = timeout;                
    OS_EventTaskWait(pevent);                          
    {OS_CPU_SR_Restore(cpu_sr);};
    OS_Sched();                                        
    {cpu_sr = OS_CPU_SR_Save();};
    switch (OSTCBCur->OSTCBStatPend) {                 
        case 0u:
             *perr = 0u;
             break;

        case 2u:
             *perr = 14u;                
             break;

        case 1u:
        default:
             OS_EventTaskRemove(OSTCBCur, pevent);
             *perr = 10u;                   
             break;
    }
    OSTCBCur->OSTCBStat          =  0x00u;       
    OSTCBCur->OSTCBStatPend      =  0u;   
    OSTCBCur->OSTCBEventPtr      = (OS_EVENT  *)0;     



    {OS_CPU_SR_Restore(cpu_sr);};
}
 






















 

INT8U  OSMutexPost (OS_EVENT *pevent)
{
    INT8U      pip;                                    
    INT8U      prio;

    OS_CPU_SR  cpu_sr = 0u;




    if (OSIntNesting > 0u) {                           
        return (5u);                      
    }





    if (pevent->OSEventType != 4u) {  
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    pip  = (INT8U)(pevent->OSEventCnt >> 8u);          
    prio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu));   
    if (OSTCBCur != (OS_TCB *)pevent->OSEventPtr) {    
        {OS_CPU_SR_Restore(cpu_sr);};
        return (100u);
    }
    if (OSTCBCur->OSTCBPrio == pip) {                  
        OSMutex_RdyAtPrio(OSTCBCur, prio);             
    }
    OSTCBPrioTbl[pip] = ((OS_TCB *)1);               
    if (pevent->OSEventGrp != 0u) {                    
                                                       
        prio                = OS_EventTaskRdy(pevent, (void *)0, 0x10u, 0u);
        pevent->OSEventCnt &= ((INT16U)0xFF00u);   
        pevent->OSEventCnt |= prio;
        pevent->OSEventPtr  = OSTCBPrioTbl[prio];      
        if (prio <= pip) {                             
            {OS_CPU_SR_Restore(cpu_sr);};                        
            OS_Sched();                                
            return (120u);
        } else {
            {OS_CPU_SR_Restore(cpu_sr);};
            OS_Sched();                                
            return (0u);
        }
    }
    pevent->OSEventCnt |= ((INT16U)0x00FFu);          
    pevent->OSEventPtr  = (void *)0;
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}
 
















 


INT8U  OSMutexQuery (OS_EVENT       *pevent,
                     OS_MUTEX_DATA  *p_mutex_data)
{
    INT8U       i;
    OS_PRIO    *psrc;
    OS_PRIO    *pdest;

    OS_CPU_SR   cpu_sr = 0u;




    if (OSIntNesting > 0u) {                                
        return (6u);                          
    }
#line 668 "..\\code\\UCOSII\\SOURCE\\os_mutex.c"
    if (pevent->OSEventType != 4u) {       
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    p_mutex_data->OSMutexPIP  = (INT8U)(pevent->OSEventCnt >> 8u);
    p_mutex_data->OSOwnerPrio = (INT8U)(pevent->OSEventCnt & ((INT16U)0x00FFu));
    if (p_mutex_data->OSOwnerPrio == 0xFFu) {
        p_mutex_data->OSValue = 1u;
    } else {
        p_mutex_data->OSValue = 0u;
    }
    p_mutex_data->OSEventGrp  = pevent->OSEventGrp;         
    psrc                      = &pevent->OSEventTbl[0];
    pdest                     = &p_mutex_data->OSEventTbl[0];
    for (i = 0u; i < ((63u) / 8u + 1u); i++) {
        *pdest++ = *psrc++;
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}


 












 

static  void  OSMutex_RdyAtPrio (OS_TCB  *ptcb,
                                 INT8U    prio)
{
    INT8U  y;


    y            =  ptcb->OSTCBY;                           
    OSRdyTbl[y] &= (OS_PRIO)~ptcb->OSTCBBitX;
    if (OSRdyTbl[y] == 0u) {
        OSRdyGrp &= (OS_PRIO)~ptcb->OSTCBBitY;
    }
    ptcb->OSTCBPrio         = prio;
    OSPrioCur               = prio;                         

    ptcb->OSTCBY            = (INT8U)((INT8U)(prio >> 3u) & 0x07u);
    ptcb->OSTCBX            = (INT8U)(prio & 0x07u);




    ptcb->OSTCBBitY         = (OS_PRIO)(1uL << ptcb->OSTCBY);
    ptcb->OSTCBBitX         = (OS_PRIO)(1uL << ptcb->OSTCBX);
    OSRdyGrp               |= ptcb->OSTCBBitY;              
    OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
    OSTCBPrioTbl[prio]      = ptcb;

}



	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
